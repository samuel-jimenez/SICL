(cl:in-package #:sicl-boot-phase-6)

(defun boot (boot)
  (format *trace-output* "Start phase 6~%")
  (with-accessors ((e3 sicl-boot:e3)
                   (e4 sicl-boot:e4)
                   (e5 sicl-boot:e5))
      boot
    (setf (env:fdefinition (env:client e5) e5 'sicl-clos::update-header)
          (lambda (to from)
            (setf (slot-value to 'sicl-boot::%class)
                  (slot-value from 'sicl-boot::%class))
            (setf (slot-value to 'sicl-boot::%rack)
                  (slot-value from 'sicl-boot::%rack))))
    (load-source-file "CLOS/update-instance-defgenerics.lisp" e5)
    (load-source-file "CLOS/change-class-defgenerics.lisp" e5)
    (load-source-file "CLOS/built-in-method-combinations.lisp" e5)
    (enable-printing e5)
    (enable-conditions e5)))
