-- Ported from commonmark-java commonmark/src/main/java/org/commonmark/renderer/html/UrlSanitizer.java @ commonmark-parent-0.30.0
-- Copyright (c) 2015, Robin Stocker. BSD-2-Clause; see LICENSE-commonmark-java.

-- Sanitizes urls for img and a elements by whitelisting protocols. This is intended to prevent XSS
-- payloads like [Click this totally safe url](javascript:document.xss=true;)
--
-- Implementation based on
-- https://github.com/OWASP/java-html-sanitizer/blob/f07e44b034a45d94d6fd010279073c38b6933072/src/main/java/org/owasp/html/FilterUrlByProtocolAttributePolicy.java
export type UrlSanitizer = {
	-- Sanitize a url for use in the href attribute of a Link.
	sanitizeLinkUrl: (self: UrlSanitizer, url: string) -> string,
	-- Sanitize a url for use in the src attribute of an Image.
	sanitizeImageUrl: (self: UrlSanitizer, url: string) -> string,
}

return {}
