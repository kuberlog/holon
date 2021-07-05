
(defclass daemon () ((name :initarg :name) (description :initarg :description)))

(defun print-daemon (daemon)
  (format t "name: ~a~%description: ~a~%"
          (slot-value daemon 'name)
          (slot-value daemon 'description)))
(defun products ()
  (mapcar
   (lambda (item) (make-instance 'daemon
                                 :name (car item)
                                 :description (if (listp (cdr item))
                                                  (cdr (assoc :description (cdr item)))
                                                  (cdr item))))
   '((sherlock .
      ((:description .
        "Hardware looks like a game controller with a pocket daemon installed")))
     (pocket-daemon .
      "Handheld daemon gadget terminal composed of an RPi, small touch screen, and lots of USB goodies. Tight Tactical Gear for dense urban environments")
     (cybook .
      " A digital book experience ran on a PiZero. To be enjoyed with real book and beer.")
     (daemon-head .
      "A medium head for a daemon. Fits RPi Daemons.")
     (wray .
      "Platform robot meant for deploying smaller machines")
     (onix-battlestation .
      "A colleague daemon battlestation meant for hardcore work (navy seal cybernetics)")
     (onix-code-analyst .
      "A keeper and analyzer of open source code repos")
     (saphira .
      "A versatile daemon interested in organic structures, progress, companionship, and high octane yet safe activities.")
     (saphira-camp .
      "A high tech mobile campsite")
     (shelfie .
      "A daemon with robotic arm for book shelf item manipulation")
     (gia .
      "Robot meant for plants")
     (rod-of-sight-and-signal .
      "Intelligent signal generator for a modern age")
     (holonic .
      "3d representation space of voxels, delivered via Steam")
     (luxium .
      "Pixar lamp clone")
     (steel-raven .
      "A supercharged rubber ducky w/ RPi zero")
     (microdaemon .
      "A RPi Zero powered daemon robot that drives fast as fuck")
     (daemon-10 .
      "10th daemon described in the black moleskine notebook from NYC")
     (kuberdog-sentinel .
      "Wearable for dogs")
     (cypack .
      "Cybernetic backpack")
     (helm .
      "HUD for cyborgs")
     (kuberdog-console .
      "holonic + pocket-daemon + sherlock for dogs")
     (plastois .
      "A 3d printer")
     (onix .
      "A professional trainer/mentor in productivity and performace")
     (onix-bot .
      "A robotic body for onix")
     (giactory .
      "Daemon for farm. To live on Colorado property")
     (shot-sentry .
      "A medium/long range camera set to fully auto")
     (hyperdriver .
      "A cyberglove input system for hypernerds")
     (holon-lisp .
      "A lisp compiler and dialect for VelOs")
     (VelOs .
      "A small and speedy Common Lisp OS for Cyborgs")
     (Sudo .
      "A light humanoid robot"))))
