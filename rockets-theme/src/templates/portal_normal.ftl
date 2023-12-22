<!DOCTYPE html>

<#include init />

<html class="${root_css_class}" dir="<@liferay.language key=" lang.dir" />" lang="${w3c_language_id}">

<head>
	<title>${html_title}</title>

	<meta content="initial-scale=1.0, width=device-width" name="viewport" />

	<@liferay_util["include"] page=top_head_include />
</head>

<body class="${css_class}">

	<@liferay_ui["quick-access"] contentId="#main-content" />

	<@liferay_util["include"] page=body_top_include />

	<@liferay.control_menu />

	<div class="position-relative" id="wrapper">

		<div class="col-12 d-flex align-items-center cabecalho">
			<div class="col-4">
				<img src="${images_folder}/logo.png">
			</div>
			<div class="nav-widget col-4">
				<#include "${full_templates_path}/navigation.ftl" />
			</div>
			<div class="col-4 barra-pesquisa">
				<@liferay.search_bar />
			</div>
		</div>

		<#if !is_signed_in>
			<a data-redirect="${is_login_redirect_required?string}" href="${sign_in_url}" id="sign-in"
				rel="nofollow">${sign_in_text}</a>
		</#if>


		<section id="content">
			<h2 class="hide-accessible sr-only" role="heading" aria-level="1">${htmlUtil.escape(the_title)}</h2>

			<#if selectable>
				<@liferay_util["include"] page=content_include />
				<#else>
					${portletDisplay.recycle()}

					${portletDisplay.setTitle(the_title)}

					<@liferay_theme["wrap-portlet"] page="portlet.ftl">
						<@liferay_util["include"] page=content_include />
						</@>
			</#if>
		</section>

		<footer id="footer" role="contentinfo">
			<p class="powered-by">
				<@liferay.language_format arguments='<a href="http://www.liferay.com" rel="external">Liferay</a>'
					key="powered-by-x" />
			</p>
		</footer>
	</div>

	<@liferay_util["include"] page=body_bottom_include />

	<@liferay_util["include"] page=bottom_include />

</body>

</html>