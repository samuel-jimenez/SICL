(cl:in-package #:asdf-user)

(defsystem #:sicl-environment
  :depends-on (#:sicl-lexical-environment
               #:stealth-mixin
               #:clostrum
               #:clostrum/virtual)
  :serial t
  :components
  ((:file "packages")
   (:file "function-entry")
   (:file "generic-functions")
   (:file "environment")
   (:file "find-package")
   (:file "trucler-methods")
   (:file "function-description")
   (:file "variable-description")
   (:file "class-description")
   (:file "get-setf-expansion-defun")
   (:file "map-defined-functions")
   (:file "map-defined-classes")
   (:file "map-defined-method-combination-templates")))
