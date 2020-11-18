(cl:in-package #:sicl-boot-phase-4)

(defun enable-object-allocation (e3)
  (setf (env:fdefinition (env:client e3) e3 'sicl-clos::allocate-general-instance)
        (lambda (class size)
          (make-instance 'sicl-boot:header
            :class class
            :rack (make-array size :initial-element 10000000))))
  (load-source-file "CLOS/stamp-offset-defconstant.lisp" e3)
  (load-source-file "CLOS/effective-slot-definition-class-support.lisp" e3)
  (load-source-file "CLOS/effective-slot-definition-class-defgeneric.lisp" e3)
  (load-source-file "CLOS/effective-slot-definition-class-defmethods.lisp" e3)
  ;; These were already loaded in phase 3 because they were needed for
  ;; the finalization of built-in classes.
  ;; (load-source-file "CLOS/class-finalization-defgenerics.lisp" e3)
  ;; (load-source-file "CLOS/class-finalization-defmethods.lisp" e3)
  (load-source-file "CLOS/allocate-instance-support.lisp" e3)
  (load-source-file "CLOS/allocate-instance-defgenerics.lisp" e3)
  (load-source-file "CLOS/allocate-instance-defmethods.lisp" e3))
  
(defun finalize-inheritance (e3)
  (format *trace-output*
          "Finalizing all classes in ~a..."
          (sicl-boot:name e3))
  (finish-output *trace-output*)
  (let ((fun (env:fdefinition (env:client e3) e3 'sicl-clos:finalize-inheritance)))
    (do-all-symbols (symbol)
      (let ((class (env:find-class (env:client e3) e3 symbol)))
        (unless (or (null class)
                    (funcall (env:fdefinition (env:client e3) e3 'sicl-clos::class-finalized-p)
                             class))
          (funcall fun class)))))
  (format *trace-output* "done~%")
  (finish-output *trace-output*))

(defun enable-object-initialization (e3 e4)
  (setf (env:constant-variable (env:client e3) e3 'sicl-clos::+unbound-slot-value+)
        10000000)
  (load-source-file "CLOS/slot-bound-using-index.lisp" e3)
  (load-source-file "CLOS/standard-instance-access.lisp" e3)
  (import-functions-from-host '(slot-unbound) e3)
  (with-intercepted-function-cells
      (e3
       (class-of
        (list (lambda (object)
                (slot-value object 'sicl-boot::%class)))))
    (load-source-file "CLOS/slot-value-etc-support.lisp" e3))
  (load-source-file "CLOS/instance-slots-offset-defconstant.lisp" e3)
  (load-source-file "CLOS/shared-initialize-support.lisp" e3)
  (load-source-file "CLOS/shared-initialize-defgenerics.lisp" e4)
  (with-intercepted-function-cells
      (e4
       (sicl-clos::shared-initialize-default-using-class
        (env:function-cell
         (env:client e3) e3 'sicl-clos::shared-initialize-default-using-class)))
    (load-source-file "CLOS/shared-initialize-defmethods.lisp" e4))
  (load-source-file "CLOS/initialize-instance-support.lisp" e4)
  (load-source-file "CLOS/initialize-instance-defgenerics.lisp" e4)
  (load-source-file "CLOS/initialize-instance-defmethods.lisp" e4))

(defun enable-make-instance (e3 e4)
  (with-intercepted-function-cells
      (e3
       (find-class
        (env:function-cell (env:client e3) e3 'find-class))
       (initialize-instance
        (env:function-cell (env:client e4) e4 'initialize-instance)))
    (load-source-file "CLOS/make-instance-support.lisp" e3))
  (load-source-file "CLOS/make-instance-defgenerics.lisp" e3)
  (load-source-file "CLOS/make-instance-defmethods.lisp" e3))

(defun enable-slot-value (e3)
  (load-source-file "CLOS/slot-value-etc-defgenerics.lisp" e3)
  (load-source-file "CLOS/slot-value-etc-defmethods.lisp" e3)
  (with-intercepted-function-cells
      (e3
       (class-of
        (list (lambda (object)
                (slot-value object 'sicl-boot::%class)))))
    (load-source-file "CLOS/slot-value-etc-specified-defuns.lisp" e3)))

(defun enable-object-creation (e3 e4)
  (enable-object-allocation e3)
  (finalize-inheritance e3)
  (enable-object-initialization e3 e4)
  (enable-make-instance e3 e4)
  (enable-slot-value e3))