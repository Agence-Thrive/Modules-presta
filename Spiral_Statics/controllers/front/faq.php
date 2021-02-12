<?php

class Spiral_StaticsfaqdModuleFrontController extends ModuleFrontController
{
    public function initContent()
    {
        parent::initContent();
        $this->setTemplate('module:Spiral_Statics/views/templates/front/faq.tpl');
    }
}