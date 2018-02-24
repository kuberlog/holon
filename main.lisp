(ql:quickload :inferior-shell)
(ql:quickload :cl-store)
(ql:quickload :parachute)

(load "timer.lisp")

(defpackage :todo
  (:use :timer :cl :parachute))

(in-package :todo)

(load "todo/globals.lisp")
(load "todo/todo.lisp")
(load "todo/todo-list.lisp")
(load "todo/printing.lisp")
(load "todo/api.lisp")

