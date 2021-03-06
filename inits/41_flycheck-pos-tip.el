;;
;; setting for flycheck-pos-tip.el
;; https://github.com/flycheck/flycheck-pos-tip

;; ===================================================================

;; 【参考】Flycheckでモダンなシンタックスチェック
;; http://qiita.com/senda-akiha/items/cddb02cfdbc0c8c7bc2b

;; ===================================================================

(el-get-bundle flycheck-pos-tip)

(use-package flycheck-pos-tip
  :defer t
  :config
  (setq flycheck-display-errors-function #'flycheck-pos-tip-error-messages))
