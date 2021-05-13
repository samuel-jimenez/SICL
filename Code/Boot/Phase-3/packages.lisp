(cl:in-package #:common-lisp-user)

(defpackage #:sicl-boot-phase-3
  (:use #:common-lisp)
  (:local-nicknames (#:env #:sicl-environment))
  (:import-from #:sicl-boot
                #:import-functions-from-host
                #:define-error-functions
                #:with-intercepted-function-cells
                #:load-source-file
                #:make-client)
  (:export #:boot))
