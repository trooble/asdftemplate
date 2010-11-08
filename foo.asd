;;;; -*- Mode: Lisp; Syntax: ANSI-Common-Lisp; Base: 10 -*-

(defpackage #:cow-asd
  (:use :cl :asdf))

(in-package :cow-asd)

(defsystem foo
  :name "foo"
  :serial t
  :components ((:file "foo")
	       (:file "bar")))


;; Simple linear dependencies
;; Filenames implicitly have a ".lisp" extension
;; (defsystem cow
;;   ;;; (Optional items omitted)
;;   :serial t ;; the dependencies are linear.
;;   :components ((:file "defpackage")
;;                (:file "legs")
;;                (:file "tail")
;;                (:file "head")))

;; ;; Complex dependencies
;; (defsystem cow
;;   ;;; (Optional items omitted)
;;   :components ((:file "tail"
;;                       :depends-on ("package" "legs"))
;;                (:file "legs"
;;                       :depends-on ("package"))
;;                (:file "head"
;;                       :depends-on ("package"))
;;                (:file "package")))

;; ;; Module dependencies
;; ;; "Breathing" and "Circulation" reside in subdirectories
;; ;; of the current directory.
;; (defsystem cow
;;   :components ((:file "head" :depends-on ("package"))
;;                (:file "tail" :depends-on ("package"
;;                                            circulation))
;;                (:file "package")
;;                (:module circulation
;;                         :components ((:file "water"
;;                                             :depends-on
;;                                             "package")
;;                                      (:file "assorted-solids"
;;                                             :depends-on
;;                                             "package")
;;                                      (:file "package")))
;;                (:module respiratory
;;                         :pathname "breathing"
;;                         :components (...))))


;; ;; A system that depends on other systems
;; (defsystem cow
;;   ;;; ...
;;   :components (...)
;;   :depends-on ("other-system"))
