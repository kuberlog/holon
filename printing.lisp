(defun print-current-todo ()
  (if *selected-todo*
      (format t "~a~%~%" (todo-description *selected-todo*))))

(defun print-todo-list ()
  (if *todo-list*
      (progn
        (format t "TODO List (~a):~%" *selected-group*)
        (loop for todo in (filter-todos-by-group *todo-list* *selected-group*)
              for i from 0 to (length *todo-list*)
              do (format t "~a) ~dXP: ~a ~%" i
                         (todo-priority todo)
                         (todo-description todo))))))

(defun print-current-groups ()
  (format t "-----<Groups>-----~%~%")
  (let ((current-groups (current-groups)))
    (loop for group in current-groups
          for i from 0 to (length current-groups)
          do (format t "~d) ~a~%" i group)))

  (format t "~%-----</Groups>-----~%~%"))


(defun print-current-groups ()
  (format t "-----<Groups>-----~%~%")
  (let ((current-groups (current-groups)))
    (loop for group in current-groups
          for i from 0 to (length current-groups)
          do (format t "~d) ~a~%" i group)))

  (format t "~%-----</Groups>-----~%~%"))

(defun print-todo-menu ()
  (format t "~%----------------------------<COMMANDS>-----------------------------~%")
  (format t "SELECT <#> |      COMPLETE     | DESELECT | DELETE-SELECTED ~%")
  (format t "-------------------------------------------------------------------~%")
  (format t "GROUPS     | SELECT-GROUP <#>  | REMIND <#> <SEC> <MIN> <HOUR>")
  (format t "~%----------------------------<COMMANDS>-----------------------------~%~%"))




