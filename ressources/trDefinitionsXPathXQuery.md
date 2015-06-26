# Définitions de XPath et XQuery

Traduction extraction des standards W3C par Patrick Durusau, http://www.durusau.net/publications/xpxqfando-alldefs.html

Un __caractère (_character_)__ est une instance de [CharXML](http://www.w3.org/TR/REC-xml/#NT-Char) production de [Extensible Markup Language (XML) 1.0 (Première édition)](http://www.durusau.net/publications/xpxqfando-alldefs.html#xml).

Une __chaîne de caractères (_string_)__ est une séquence de zéro ou plusieurs caractères, ou de manière équivalente une valeur dans l’espace de valeur du type de données `xs:string`.

Un __point de code (_codepoint_)__ est un entier non-négatif assigné à un caractère par le consortium Unicode, ou réservé pour être assigné dans le futur à un caractère.

Un __QName-développé (_expanded-QName_)__ est une paire de valeurs qui consiste en une URI d’espace de nom et un nom local. Il  appartient à l’espace de valeur du type de donnnées `xs:QName` de [XML Schema Part 2: Datatypes Second Edition](http://www.durusau.net/publications/xpxqfando-alldefs.html#xmlschema-2). Lorsque ce document réfère à xs:QName, on désigne toujours l’espace de valeur, par exemple une paire URI d’espace de nom et un nom local (et non pas l’espace lexical référencé par des constructions de la forme prefixe:nom-local).

Au sein de cette spécification, le terme URI réfère à des Universal Resource Identifiers tels que définis dans [RFC 3986](http://www.durusau.net/publications/xpxqfando-alldefs.html#rfc3986) et étendus par [RFC 3987](http://www.durusau.net/publications/xpxqfando-alldefs.html#rfc3987) sous la dénomination d’IRI. Le terme Référence d’URI, à moins de mention contraire, réfère à une chaîne dans l’espace lexical du type de donné `xs:anyURI` tel que défini par [XML Schema Part 2: Datatypes Second Edition](http://www.durusau.net/publications/xpxqfando-alldefs.html#xmlschema-2).

[Definition] Two function calls are said to be within the same execution scope if the host environment defines them as such. In XSLT, any two calls executed during the same transformation are in the same execution scope (except that static expressions, such as those used in use-when attributes, are in a separate executed during the evaluation of a top-level expression are in the same execution scope. In other contexts, the execution scope is specified by the host environment that invokes the function library.

[Definition] Two values are defined to be identical if they contain the same number of items and the items are pairwise identical. Two items are identical if and only if one of the following conditions applies:

[Definition] A function may have the property of being context-dependent: the result of such a function depends on the values of properties in the static and dynamic evaluation context as well as on the actual supplied arguments (if any).

[Definition] A function that is not ·context-dependent· is called context-independent.

[Definition] A function is focus-dependent if its result depends on the focus (that is, the context item, position, or size).

[Definition] A function that is not ·focus-dependent· is called focus-independent

[Definition] For a ·context-dependent· function, the parts of the context on which it depends are referred to as implicit arguments.

[Definition] A function that is guaranteed to produce ·identical· results from repeated calls within a single ·execution scope· if the explicit and implicit arguments are identical is referred to as deterministic.

[Definition] A function that is not ·deterministic· is referred to as nondeterministic.

[Definition] The decimal digit family of a decimal format is the sequence of ten digits with consecutive Unicode ·codepoints· starting with the mandatory-digit-sign.

[Definition] The formatting of a number is controlled by a picture string. The picture string is a sequence of ·characters·, in which the characters assigned to the properties decimal-separator-sign, exponent-separator-sign, grouping-sign, decimal-digit-family, optional-digit-sign and pattern-separator-sign are classified as active characters, and all other characters (including the percent-sign and per-mille-sign) are classified as passive characters.

[Definition] The collation URI http://www.w3.org/2005/xpath-functions/collation/codepoint identifies a collation which must be recognized by every implementation: it is referred to as the Unicode codepoint collation (not to be confused with the Unicode collation algorithm).

[Definition] The three functions fn:format-dateTime, fn:format-date, and fn:format-time are referred to collectively as the date formatting functions.

[Definition] A map consists of a set of entries. Each entry comprises a key which is an arbitrary atomic value, and an arbitrary sequence called the associated value.





[Definition] Un map consiste en un ensemble d’entrées. Chaque entrée comprend une clef qui est une valeur atomique arbitraire, et une séquence arbitraire appellée valeur associée.

[Definition] Au sein d’un map, deux entrées ne peuvent avoir la même clef. Deux valeurs atomiques K1 et K2 sont la même clef si la relation deep-equal(K1, K2, $UCC) tient, où $UCC est la collation de codepoint Unicode.
