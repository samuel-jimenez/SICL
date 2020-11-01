(cl:in-package #:asdf-user)

(defsystem #:sicl-boot-phase-4
  :depends-on (#:sicl-boot-base
               #:sicl-clos-boot-support)
  :serial t
  :components
  ((:file "packages")
   (:file "environment")
   (:file "create-additional-generic-functions")
   (:file "create-additional-classes")
   (:file "boot")))
