(cl:in-package #:sicl-boot-phase-1)

(defun boot (boot)
  (format *trace-output* "Start phase 1~%")
  (with-accessors ((e0 sicl-boot:e0)
                   (e1 sicl-boot:e1))
      boot
    (change-class e1 'environment
                  :client (make-instance 'client))
    (let ((client (env:client e0)))
      (setf (env:fdefinition client e0 'sicl-boot:ast-eval)
            (lambda (ast)
              (let ((code (sicl-ast-evaluator:translate-top-level-ast client ast)))
                (funcall (compile nil code) e0))))
      (setf (env:macro-function client e0 'in-package)
            (lambda (form environment)
              (declare (ignore environment))
              (setf *package* (find-package (second form)))
              nil)))
    (fill-environment e0)))
