<div class="container-rockets">
    <div class="row">
        <#if Fieldset97861396.getSiblings()?has_content>
            <#list Fieldset97861396.getSiblings() as cur_Fieldset97861396>
                <div class="col-md-4">
                    <div class="card">
                        <#if (cur_Fieldset97861396.Image31010132.getData())?? && cur_Fieldset97861396.Image31010132.getData() !="">
            <img alt="${cur_Fieldset97861396.Image31010132.getAttribute("alt")}" data-fileentryid="${cur_Fieldset97861396.Image31010132.getAttribute("fileEntryId")}" src="${cur_Fieldset97861396.Image31010132.getData()}" />
        </#if>
                        <div class="card-body">
                        <#if (cur_Fieldset97861396.Text25271898.getData())??>
                            <h5 class="card-title">${cur_Fieldset97861396.Text25271898.getData()}</h5>
                            </#if>
                            <#if (cur_Fieldset97861396.Text12643947.getData())??>
                            <p class="card-text">${cur_Fieldset97861396.Text12643947.getData()}</p>
                            </#if>
                            <#if (cur_Fieldset97861396.Text66282156.getData())??>
                            <a href="#" class="btn btn-primary">${cur_Fieldset97861396.Text66282156.getData()}</a>
                            </#if>
                        </div>
                    </div>
                </div>
            </#list>
        </#if>
    </div>
</div>

        



    