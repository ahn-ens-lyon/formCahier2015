XQuery and XPath Data Model 3.1 http://www.w3.org/TR/2014/CR-xpath-datamodel-31-20141218/ Definitions

By Patrick Durusau, patrick@durusau.net
The following definitions were extracted from XQuery and XPath Data Model 3.1 http://www.w3.org/TR/2014/CR-xpath-datamodel-31-20141218/ on 14 January 2014. No sorting has been performed. Where multiple definitions occur in a paragraph, that paragraph is repeated. That is a feature, not a bug. Multiple occurrences of the same paragraph signals that any included non-normative text may apply to one or more of the definitions the paragraph contains.

Another document that incorporates the definitions from XPath 3.1, XQuery 3.1, XPath and XQuery Functions and Operators 3.1, and XQuery and XPath Data Model 3.1 deduped and in sort order is in preparation.

[Definition: Every instance of the data model is a sequence.]

[Definition: A sequence is an ordered collection of zero or more items.] A sequence cannot be a member of a sequence. A single item appearing on its own is modeled as a sequence containing one item. Sequences are defined in 2.5 Sequences.

[Definition: An item is either a node, a function, or an atomic value.]

Sometimes it is necessary to distinguish the case where a particular property has no value in the data model. The canonical example of such a case is the namespace URI property of an expanded QName that is not in any namespace. For such properties, it is convenient to be able to speak of "the state of having no value". [Definition: When a property has no value, we say that it is absent.]

Every node is one of the seven kinds of nodes defined in 6 Nodes. Nodes form a tree. Each node has at most one parent (reachable via the dm:parent accessor) and descendant nodes that are reachable directly or indirectly via the dm:children, dm:attributes, and dm:namespace-nodes accessors. [Definition: The root node is the topmost node of a tree, the node with no parent.] Every tree has exactly one root node and every other node can be reached from exactly one root node.

[Definition: A tree whose root node is a Document Node is referred to as a document.]

[Definition: A tree whose root node is not a Document Node is referred to as a fragment.]

[Definition: An atomic value is a value in the value space of an atomic type and is labeled with the name of that atomic type.]

[Definition: An atomic type is a primitive simple type or a type derived by restriction from another atomic type.] (Types derived by list or union are not atomic.)

[Definition: There are 21 primitive simple types: the 19 defined in Section 3.2 Primitive datatypesXS2 of [Schema Part 2] and xs:untypedAtomic and xs:anyAtomicType ], defined in 2.7 Schema Information.

[Definition: An expanded-QName is a set of three values consisting of a possibly empty prefix, a possibly empty namespace URI, and a local name.] See 3.3.3 QNames and NOTATIONS.

[Definition: Implementation-defined indicates an aspect that may differ between implementations, but must be specified by the implementor for each particular implementation.]

[Definition: Implementation-dependent indicates an aspect that may differ between implementations, is not specified by this or any W3C specification, and is not required to be specified by the implementor for any particular implementation.]

[Definition: A document order is defined among all the nodes accessible during a given query or transformation. Document order is a total ordering, although the relative order of some nodes is implementation-dependent. Informally, document order is the order in which nodes appear in the XML serialization of a document.] [Definition: Document order is stable, which means that the relative order of two nodes will not change during the processing of a given query or transformation, even if this order is implementation-dependent.]

[Definition: A document order is defined among all the nodes accessible during a given query or transformation. Document order is a total ordering, although the relative order of some nodes is implementation-dependent. Informally, document order is the order in which nodes appear in the XML serialization of a document.] [Definition: Document order is stable, which means that the relative order of two nodes will not change during the processing of a given query or transformation, even if this order is implementation-dependent.]

[Definition: This specification uses the term Namespace URI to refer to a namespace name, whether or not it is a valid URI or IRI]. Following the lead of [Namespaces in XML] and [Namespaces in XML 1.1], processors implementing this data model may raise an error if a namespace name is not a valid URI or IRI (depending on whether they support [Namespaces in XML] or [Namespaces in XML 1.1]), but they are not required to make any checks. Note that the use of a relative reference as a namespace name is deprecated and is defined to be meaningless, but it is not an error. Namespace names, whatever form they take, are treated as character strings and compared for equality using codepoint-by-codepoint comparison, subject only to whitespace normalization if they appear in a context (for example, within an attribute value) where this is appropriate.

[Definition: A string is a value in the value space of the xs:string data type; equivalently, it is a sequence of characters.]

[Definition: A character is an instance of the Char production in [XML]. It is recommended that the implementation use the latest definition, currently XML 1.1 Second Edition.]

[Definition: A function is an item that can be called. ] Functions cannot be compared for identity, equality, or otherwise, and have no serialization.

signature (a FunctionTest of the form Annotation* TypedFunctionTest): The TypedFunctionTestXP31 has one SequenceTypeXP31 for each parameter, and one SequenceType for the function's result. [Definition: A function signature represents the type of a function.] The presence of annotations is language dependent; functions defined in languages, such as XPath, that have no mechanism for defining annotations will create functions in the data model with zero annotations.

[Definition: A function's arity is the number of its parameters. ] The number of names in a function's parameter names, and the number of parameter types in its signature, must equal the function's arity.

[Definition: A map item is a value that represents a map (sometimes called a hash or an associative array).] A map is logically a collection of key/value pairs. Each key in the map is unique (there is no other key to which it is equal) and has associated with it a value that is a single item or sequence of items. There is no uniqueness constraint on values.

[Definition: An array item is a value that represents an array.] An array is an ordered list of values; these values are called the members of the array. Unlike sequences, a member of an array can be any value (including a sequence or an array). The number of members in an array is called its size, and they are referenced by their position, in the range 1 to the size of the array.

[Definition: An incompletely validated document is an XML document that has a corresponding schema but whose schema-validity assessment has resulted in one or more element or attribute information items being assigned values other than 'valid' for the [validity] property in the PSVI.]

[Definition: There are seven kinds of Nodes in the data model: document, element, attribute, text, namespace, processing instruction, and comment.] Each kind of node is described in the following sections.

Errors or comments to:patrick@durusau.net
