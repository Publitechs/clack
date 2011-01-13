#|
  This file is a part of Slinky package.
  URL: http://github.com/fukamachi/slinky
  Copyright (c) 2011 Eitarow Fukamachi <e.arrows@gmail.com>

  Slinky is freely distributable under the LLGPL License.
|#

#|
  Slinky.

  Author: Eitarow Fukamachi (fukamachi_e@ariel-networks.com)
|#

(in-package :cl-user)

(defpackage slinky-asd
  (:use :asdf))

(in-package :slinky-asd)

(defsystem slinky
  :version "1.0"
  :author "Eitarow Fukamachi"
  :license "LLGPL"
  :depends-on (:closer-mop :cl-fad :hunchentoot :alexandria)
  :components ((:module "src"
                :serial t
                :components
                ((:module "core"
                  :serial t
                  :components ((:file "package")
                               (:file "class")))
                 (:module "middleware"
                  :serial t
                  :components ((:file "package")
                               (:file "special")
                               (:file "class")
                               (:module "route"
                                :serial t
                                :components ((:file "package")
                                             (:file "class")))))
                 (:module "action"
                  :serial t
                  :components ((:file "package")
                               (:file "special")
                               (:file "class")
                               (:file "main")))
                 (:module "application"
                  :serial t
                  :components ((:file "package")
                               (:file "special")
                               (:file "class")
                               (:file "main")))
                 (:module "server"
                  :serial t
                  :components ((:file "package")
                               (:file "dispatcher")
                               (:file "main")))
                 (:module "base"
                  :pathname ""
                  :serial t
                  :components ((:file "package")
                               (:file "core")))))))