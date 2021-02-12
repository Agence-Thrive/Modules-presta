<div class="custom-post" class="form-group">
    <h2>Champs personnalisés</h2>

    {* tissus *}
    <div class="row">
        <div class="col-lg-8">
            <label for="tissus">Tissus</label>
            <input type="text" name="tissus" class="form-control mb-4" placeholder="Ex: 100% Coton bio">
        </div>
        <div class="col-lg-4">
            <label for="gots">GOTS</label>
            <select name="gots" id="gots" class="form-control mb-4">
                <option value="1">Oui</option>
                <option value="2">Non</option>                
            </select>
        </div>
    </div>   

    {* WISIWIG *}

    {* Tailles *}
    <div class="col-lg-12 col-xl-12">
        <label class="form-control-label mb-2">Taille</label>
        <div class="translations tabbable">
            <div class="translationsFields tab-content bordered">
            {foreach from=$languages item=language }
                <div class="tab-pane translation-label-{$language.iso_code} {if $default_language == $language.id_lang}active{/if}">
                    <textarea   name="taille_{$language.id_lang}" 
                                placeholder="Les informations concernant la taille"
                                class="autoload_rte mb-4">{if isset({$taille[$language.id_lang]}) && {$taille[$language.id_lang]} != ''}{$taille[$language.id_lang]}{/if}
                                
                    </textarea>
                </div>
            {/foreach}
            </div>
        </div>
    </div>

    {* coupe *}
    <div class="col-lg-12 col-xl-12">
        <label class="form-control-label mb-2">Coupe</label>
        <div class="translations tabbable">
            <div class="translationsFields tab-content bordered">
            {foreach from=$languages item=language }
                <div class="tab-pane translation-label-{$language.iso_code} {if $default_language == $language.id_lang}active{/if}">
                    <textarea   name="coupe_{$language.id_lang}" 
                                placeholder = "Les informations concernant la coupe"
                                class="autoload_rte mb-4">{if isset({$coupe[$language.id_lang]}) && {$coupe[$language.id_lang]} != ''}{$coupe[$language.id_lang]}{/if}
                    </textarea>
                </div>
            {/foreach}
            </div>
        </div>
    </div>

    {* composition *}
    <div class="col-lg-12 col-xl-12">
        <label class="form-control-label mb-2">Composition</label>
        <div class="translations tabbable">
            <div class="translationsFields tab-content bordered">
            {foreach from=$languages item=language }
                <div class="tab-pane translation-label-{$language.iso_code} {if $default_language == $language.id_lang}active{/if}">
                    <textarea   name="composition_{$language.id_lang}" 
                                placeholder = "Les informations concernant la composition"
                                class="autoload_rte mb-4">{if isset({$composition[$language.id_lang]}) && {$composition[$language.id_lang]} != ''}{$composition[$language.id_lang]}{/if}
                    </textarea>
                </div>
            {/foreach}
            </div>
        </div>
    </div>

    {* entretien *}
    <div class="col-lg-12 col-xl-12">
        <label class="form-control-label mb-2">Entretien</label>
        <div class="translations tabbable">
            <div class="translationsFields tab-content bordered">
            {foreach from=$languages item=language }
                <div class="tab-pane translation-label-{$language.iso_code} {if $default_language == $language.id_lang}active{/if}">
                    <textarea   name="entretien_{$language.id_lang}" 
                                placeholder = "Les informations concernant l'entretien"
                                class="autoload_rte mb-4">{if isset({$entretien[$language.id_lang]}) && {$entretien[$language.id_lang]} != ''}{$entretien[$language.id_lang]}{/if}
                    </textarea>
                </div>
            {/foreach}
            </div>
        </div>
    </div>

    {* Livraison et retours *}
    <div class="col-lg-12 col-xl-12">
        <label class="form-control-label mb-2">Livraison & Retours</label>
        <div class="translations tabbable">
            <div class="translationsFields tab-content bordered">
            {foreach from=$languages item=language }
                <div class="tab-pane translation-label-{$language.iso_code} {if $default_language == $language.id_lang}active{/if}">
                    <textarea   name="service_retour_{$language.id_lang}" 
                                placeholder = "Les informations concernant la livraison et le retour produit"
                                class="autoload_rte mb-4">{if isset({$service_retour[$language.id_lang]}) && {$service_retour[$language.id_lang]} != ''}{$service_retour[$language.id_lang]}{/if}
                    </textarea>
                </div>
            {/foreach}
            </div>
        </div>
    </div>




    {* <label for="composition">Composition</label>
    <input type="text" name="composition" class="form-control mb-4" placeholder="Ex: Fibre de lin">

    <label for="entretien">Entretien</label>
    <input type="text" name="entretien" class="form-control mb-4" placeholder="Ex: Lavable à froid">

    <label for="service_retour">Service de retours gratuit</label>
    <input type="text" name="service_retour" class="form-control mb-4" placeholder="Ex: voir nos condition générales de vente"> *}

    <label for="fabrication">Lieu de fabrication</label>
    <select name="fabrication" id="fabrication" class="form-control mb-4">
        <option value="1">Périgord-limousin</option>
        <option value="2">Vietnam</option>
    </select>

</div>

