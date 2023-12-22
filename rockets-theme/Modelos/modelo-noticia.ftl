<div class="text-center">
    <#if (title.getData())??>
        <h1> ${title.getData()}</h1>
    </#if>
    <#if (image.getData())?? && image.getData() !="">
        <div>
            <img data-fileentryid="${image.getAttribute("fileEntryId")}"
                src="${image.getData()}" />
        </div>
    </#if>
    <#if (content.getData())??>
        <div>
            ${content.getData()}
        </div>
    </#if>
    <a href="${friendlyURL}"> Leia aqui!</a>
    
</div>