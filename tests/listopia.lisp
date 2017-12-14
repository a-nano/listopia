(defpackage listopia-test
  (:use :cl
        :listopia
        :prove))

(in-package :listopia-test)


(plan nil)


(is nil (.head '()))
(is 666 (.head '() 666))
(is 1 (.head '(1)))


(is nil (.last '()))
(is 666 (.last '() 666))
(is 1 (.last '(1)))


(is nil (.tail '()))
(is 666 (.tail '() 666))
(is nil (.tail '(1)))


(is nil (.init '()))
(is 666 (.init '() 666))
(is nil (.init '(1)))


(is nil (.uncons '()))
(is 666 (.uncons '() 666))
(is nil (.uncons '(1)))
(is 2 (length (.uncons '(1 2 3))))


(is '() (.map #'1+ '()))
(is '(2 3 4) (.map #'1+ '(1 2 3)))

(is '() (.intersperse 0 '()))
(is '(1) (.intersperse 0 '(1)))
(is 5 (length (.intersperse #\, '(#\f #\o \#o))))

(is '() (.intercalate '(0) '()))
(is '(1) (.intercalate '(0) '((1))))
(is 3 (length (.intercalate '(" ") '(("foo") ("bar")))))


(finalize)
