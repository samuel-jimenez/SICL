(cl:in-package #:sicl-boot-phase-8)

(defun load-cons-related-functions (e5)
  (load-source "Cons/null-defun.lisp" e5)
  (load-source "Cons/list-defun.lisp" e5)
  (load-source "Cons/list-star-defun.lisp" e5)
  (load-source "Cons/list-length-defun.lisp" e5)
  (load-source "Cons/make-list-defun.lisp" e5)
  (load-source "Cons/union-defun.lisp" e5)
  (load-source "Cons/nunion-defun.lisp" e5)
  (load-source "Cons/intersection-defun.lisp" e5)
  (load-source "Cons/nintersection-defun.lisp" e5)
  (load-source "Cons/set-difference-defun.lisp" e5)
  (load-source "Cons/nset-difference-defun.lisp" e5)
  (load-source "Cons/set-exclusive-or-defun.lisp" e5)
  (load-source "Cons/nset-exclusive-or-defun.lisp" e5)
  (load-source "Cons/subsetp-defun.lisp" e5)
  (load-source "Cons/endp-defun.lisp" e5)
  (load-source "Cons/member-defun.lisp" e5)
  (load-source "Cons/member-if-defun.lisp" e5)
  (load-source "Cons/member-if-not-defun.lisp" e5)
  (load-source "Cons/acons-defun.lisp" e5)
  (load-source "Cons/adjoin-defun.lisp" e5)
  (load-source "Cons/append-defun.lisp" e5)
  (load-source "Cons/revappend-defun.lisp" e5)
  (load-source "Cons/nconc-defun.lisp" e5)
  (load-source "Cons/nreconc-defun.lisp" e5)
  (load-source "Cons/assoc-defun.lisp" e5)
  (load-source "Cons/assoc-if-defun.lisp" e5)
  (load-source "Cons/assoc-if-not-defun.lisp" e5)
  (load-source "Cons/rassoc-defun.lisp" e5)
  (load-source "Cons/rassoc-if-defun.lisp" e5)
  (load-source "Cons/rassoc-if-not-defun.lisp" e5)
  (load-source "Cons/butlast-defun.lisp" e5)
  (load-source "Cons/nbutlast-defun.lisp" e5)
  (load-source "Cons/copy-alist-defun.lisp" e5)
  (load-source "Cons/copy-list-defun.lisp" e5)
  (load-source "Cons/copy-tree-defun.lisp" e5)
  (load-source "Cons/tree-equal-defun.lisp" e5)
  (load-source "Cons/getf-defun.lisp" e5)
  (load-source "Cons/get-properties-defun.lisp" e5)
  (load-source "Cons/last-defun.lisp" e5)
  (load-source "Cons/make-bindings-defun.lisp" e5)
  (load-source "Cons/mapcar-defun.lisp" e5)
  (load-source "Cons/mapcan-defun.lisp" e5)
  (load-source "Cons/mapc-defun.lisp" e5)
  (load-source "Cons/mapcon-defun.lisp" e5)
  (load-source "Cons/mapl-defun.lisp" e5)
  (load-source "Cons/maplist-defun.lisp" e5)
  (load-source "Cons/sublis-defun.lisp" e5)
  (load-source "Cons/nsublis-defun.lisp" e5)
  (load-source "Cons/subst-defun.lisp" e5)
  (load-source "Cons/nsubst-defun.lisp" e5)
  (load-source "Cons/subst-if-defun.lisp" e5)
  (load-source "Cons/nsubst-if-defun.lisp" e5)
  (load-source "Cons/subst-if-not-defun.lisp" e5)
  (load-source "Cons/nsubst-if-not-defun.lisp" e5)
  (load-source "Cons/nth-defun.lisp" e5)
  (load-source "Cons/setf-nth-defun.lisp" e5)
  (load-source "Cons/nthcdr-defun.lisp" e5)
  (load-source "Cons/pairlis-defun.lisp" e5)
  (load-source "Cons/ldiff-defun.lisp" e5)
  (load-source "Cons/tailp-defun.lisp" e5))