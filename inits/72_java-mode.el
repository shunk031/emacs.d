;;
;; setting for Java development environment
;;

;; ===================================================================

;; 【参考】Ubuntuで Javaを使おう
;; http://blog.kcg.ne.jp/s2node/2009/04/17/ubuntu%E3%81%A7-java%E3%82%92%E4%BD%BF%E3%81%8A%E3%81%86/

;; ===================================================================

;; javaファイルをコンパイルするのにJDKが必要なので
;; インストールしておく

;; ===================================================================

;; 【参考】
;; https://github.com/tsu-nera/dotfiles/blob/master/.emacs.d/inits/31_java.org

;; ===================================================================

(add-hook 'java-mode-hook
	    (lambda ()
	      ;; タブ幅
	      (setq tab-width 4)
	      
	      ;; タブはとりあえず有効. プロジェクトによって変える.
	      (setq indent-tabs-mode t)
	      (setq c-basic-offset 4)))
