(cl:in-package #:sicl-boot)

(defun create-mop-classes (ea)
  (flet ((ld (pathname)
           (load-source-file pathname ea)))
    (ld "CLOS/t-defclass.lisp")
    (ld "CLOS/function-defclass.lisp")
    (ld "CLOS/standard-object-defclass.lisp")
    (ld "Structure/structure-object-defclass.lisp")
    (ld "CLOS/metaobject-defclass.lisp")
    (ld "CLOS/method-defclass.lisp")
    (ld "CLOS/standard-method-defclass.lisp")
    (ld "CLOS/standard-accessor-method-defclass.lisp")
    (ld "CLOS/standard-reader-method-defclass.lisp")
    (ld "CLOS/standard-writer-method-defclass.lisp")
    (ld "CLOS/slot-definition-defclass.lisp")
    (ld "CLOS/standard-slot-definition-defclass.lisp")
    (ld "CLOS/direct-slot-definition-defclass.lisp")
    (ld "CLOS/effective-slot-definition-defclass.lisp")
    (ld "CLOS/standard-direct-slot-definition-defclass.lisp")
    (ld "CLOS/standard-effective-slot-definition-defclass.lisp")
    (ld "CLOS/method-combination-defclass.lisp")
    (ld "CLOS/specializer-defclass.lisp")
    (ld "CLOS/eql-specializer-defclass.lisp")
    (ld "CLOS/class-unique-number-defparameter.lisp")
    (ld "CLOS/class-defclass.lisp")
    (ld "CLOS/forward-referenced-class-defclass.lisp")
    (ld "CLOS/real-class-defclass.lisp")
    (ld "CLOS/regular-class-defclass.lisp")
    (ld "CLOS/standard-class-defclass.lisp")
    (ld "CLOS/funcallable-standard-class-defclass.lisp")
    (ld "Structure/structure-class-defclass.lisp")
    (ld "Conditions/condition-class-defclass.lisp")
    (ld "CLOS/built-in-class-defclass.lisp")
    (ld "CLOS/funcallable-standard-object-defclass.lisp")
    (ld "CLOS/simple-function-defclass.lisp")
    (ld "CLOS/generic-function-defclass.lisp")
    (ld "CLOS/standard-generic-function-defclass.lisp")
    (ld "Array/array-defclass.lisp")
    (ld "Array/array-t-defclass.lisp")
    (ld "Array/array-character-defclass.lisp")
    (ld "Array/array-bit-defclass.lisp")
    (ld "Array/array-single-float-defclass.lisp")
    (ld "Array/array-double-float-defclass.lisp")
    (ld "Array/array-signed-byte-32-defclass.lisp")
    (ld "Array/array-signed-byte-64-defclass.lisp")
    (ld "Array/array-unsigned-byte-32-defclass.lisp")
    (ld "Array/array-unsigned-byte-64-defclass.lisp")
    (ld "Array/array-unsigned-byte-8-defclass.lisp")
    (ld "Array/array-complex-single-float-defclass.lisp")
    (ld "Array/array-complex-double-float-defclass.lisp")
    (ld "Sequence/sequence-defclass.lisp")
    (ld "Array/vector-defclass.lisp")
    (ld "Array/simple-vector-defclass.lisp")
    (ld "Array/bit-vector-defclass.lisp")
    (ld "Array/vector-single-float-defclass.lisp")
    (ld "Array/vector-double-float-defclass.lisp")
    (ld "Array/vector-signed-byte-32-defclass.lisp")
    (ld "Array/vector-signed-byte-64-defclass.lisp")
    (ld "Array/vector-unsigned-byte-32-defclass.lisp")
    (ld "Array/vector-unsigned-byte-64-defclass.lisp")
    (ld "Array/vector-unsigned-byte-8-defclass.lisp")
    (ld "Array/vector-complex-single-float-defclass.lisp")
    (ld "Array/vector-complex-double-float-defclass.lisp")
    (ld "String/string-defclass.lisp")
    (ld "Cons/list-defclass.lisp")
    (ld "Cons/cons-defclass.lisp")
    (ld "Symbol/symbol-defclass.lisp")
    (ld "Cons/null-defclass.lisp")
    (ld "Package/package-defclass.lisp")
    (ld "Arithmetic/number-defclass.lisp")
    (ld "Arithmetic/real-defclass.lisp")
    (ld "Arithmetic/rational-defclass.lisp")
    (ld "Arithmetic/ratio-defclass.lisp")
    (ld "Arithmetic/integer-defclass.lisp")
    (ld "Arithmetic/fixnum-defclass.lisp")
    (ld "Arithmetic/bignum-defclass.lisp")
    (ld "Arithmetic/float-defclass.lisp")
    (ld "Arithmetic/single-float-defclass.lisp")
    (ld "Arithmetic/double-float-defclass.lisp")
    (ld "Arithmetic/complex-defclass.lisp")
    (ld "Character/character-defclass.lisp")
    (ld "Compiler/Code-object/code-object-defclass.lisp")
    (ld "Random/random-state-defclass.lisp")
    (ld "Boot/host-classes.lisp")))
