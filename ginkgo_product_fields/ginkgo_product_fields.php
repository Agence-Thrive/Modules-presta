<?php

if (!defined('_PS_VERSION_')) {exit;}

class ginkgo_product_fields extends Module {

     public function __construct() {

        $this->name = 'ginkgo_product_fields';
        $this->tab = 'others';
        $this->author = 'Pierre-Francois M.';
        $this->version = '1.0.0';
        $this->need_instance = 0;
        $this->bootstrap = true;

        parent::__construct();

        $this->displayName = $this->l('Ginkgo - product fields');
        $this->description = $this->l('add new fields to product');
        $this->ps_versions_compliancy = array('min' => '1.7.1', 'max' => _PS_VERSION_);
    }

    public function install() {
        if (!parent::install() || !$this->_installSql()
                || ! $this->registerHook('displayAdminProductsExtra')
                || ! $this->registerHook('displayAdminProductsMainStepLeftColumnMiddle')
        ) {
            return false;
        }
        return true;
    }

    public function uninstall() {
        return parent::uninstall() && $this->_unInstallSql();
    }


    protected function _installSQL() {
        $sqlInstallLang = "ALTER TABLE " . _DB_PREFIX_ . "product_lang "
            
        . "ADD tissus LONGTEXT NULL,"
        . "ADD gots LONGTEXT NULL,"
        . "ADD taille LONGTEXT NULL,"
        . "ADD coupe LONGTEXT NULL,"
        . "ADD composition LONGTEXT NULL,"
        . "ADD entretien LONGTEXT NULL,"
        . "ADD service_retour LONGTEXT NULL,"
        . "ADD fabrication LONGTEXT NULL";

        $returnSqlLang = Db::getInstance()->execute($sqlInstallLang);  
        return $returnSqlLang;
      }

      protected function _uninstallSQL() {
        $sqlInstallLang = "ALTER TABLE " . _DB_PREFIX_ . "product_lang "
        . "DROP tissus, "
        . "DROP gots,"
        . "DROP taille," 
        . "DROP coupe,"
        . "DROP composition,"
        . "DROP entretien,"
        . "DROP service_retour,"
        . "DROP fabrication";
        
        $returnSqlLang = Db::getInstance()->execute($sqlInstallLang);
        return $returnSqlLang;
      }

    public function hookDisplayAdminProductsExtra($params) {
       return $this->_displayHookContentBlock(__FUNCTION__);
    }

    public function hookDisplayAdminProductsMainStepLeftColumnMiddle($params) {
        $product = new Product($params['id_product']);
        $languages = Language::getLanguages($active);
        $this->context->smarty->assign(array(
            
            'languages' => $languages,
            'tissus' => $product->tissus,
            'gots' => $product->gots,
            'taille' => $product->taille,
            'coupe' => $product->coupe,
            'composition' => $product->composition,
            'entretien' => $product->entretien,
            'service_retour' => $product->service_retour,
            'fabrication' => $product->fabrication
            )
        );
        return $this->display(__FILE__, 'views/templates/hook/extrafields.tpl');
    }

    protected function  _displayHookContentBlock($hookName) {
        $this->context->smarty->assign('hookName',$hookName);
        return $this->display(__FILE__, 'views/templates/hook/hookBlock.tpl');
    }

}
