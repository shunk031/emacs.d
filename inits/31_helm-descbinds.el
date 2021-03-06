;;
;; setting for helm-descbinds.el
;; https://github.com/emacs-helm/helm-descbinds

;; ===================================================================

;; 【参考】helm-descbinds
;; http://emacs-jp.github.io/packages/helm/helm-descbinds.html

;; ===================================================================

(el-get-bundle helm-descbinds)

(use-package helm-descbinds
  :defer t
  :config
  (helm-descbinds-mode))
