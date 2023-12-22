<#function getElementValueByName rootElement childNodeName>
    <#return rootElement.selectSingleNode("dynamic-element[@field-reference='" + childNodeName + "']").getStringValue()?trim />
</#function>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick-theme.css"/>

  <style>
		.noticias {
			background-color: lightgray;
		}
    .noticias img{
	margin: 0 auto;
	width: 750px;
	height: 500px;
	margin-bottom: 30px;
}
		.noticias a{
	  border: 1px solid white;
    padding: 10px;
    color: white;
		}
		@media (max-width: 800px) {
			.noticias img {
			width: 360px;
			height: 240px;
			}
		}
  </style>
<#if entries?has_content>
<div class="carousel noticias text-center"> 

        <#list entries as curEntry>
            <#assign journalArticle=curEntry.getAssetRenderer().getArticle() />
            <#assign document=saxReaderUtil.read(journalArticle.getContent()) />
            <#assign rootElement=document.getRootElement() />

            <#assign titulo=getElementValueByName(rootElement, "title" ) />
            <#assign imagem=getElementValueByName(rootElement, "image" )?eval />
            
         
                <div class="col-md-12 mb-3">
                    <h1>${titulo}</h1>
                    <img src="/documents/${imagem.groupId}/0/${imagem.name}" alt="${imagem.alt}">
                    <a href="/web/guest/-/${journalArticle.urlTitle}">Notícia completa</a>
									
                </div>

        </#list>

    </div>
	<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
	

    <script>
		$(document).ready(function(){
		  $('.carousel').slick({
			autoplay: true,
			autoplaySpeed: 5000,
			dots: true, 
			infinite: true,
			speed: 500,
			slidesToShow: 1,
			slidesToScroll: 1
		  });
		});
	  </script>

</#if>