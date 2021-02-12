<?php

class Spiral_StaticsgingkoWorldModuleFrontController extends ModuleFrontController
{
    public function initContent()
    {
        parent::initContent();
        $this->setTemplate('module:Spiral_Statics/views/templates/front/cgv.tpl');
    }
}