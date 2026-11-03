-- Ported from commonmark-java commonmark/src/main/java/org/commonmark/node/Node.java @ commonmark-parent-0.30.0
-- Copyright (c) 2015, Robin Stocker. BSD-2-Clause; see LICENSE-commonmark-java.

local Root = script:FindFirstAncestor("CommonMark")
local SourceSpan = require(Root.node.SourceSpan)

type SourceSpan = SourceSpan.SourceSpan

-- PORT NOTE: Node is the one class for every node (ROACTCHAT-2833). Each concrete kind is a
-- constructor function returning a Node with `kind` set to the Java simple name and `isBlock` set
-- for Block subclasses; kind fields are plain data on the node (Nodes.Heading, node.level).
-- Block.java folds in here: its parent rule is setParent's isBlock assert. Its getParent override
-- casts to Block, and that cast's ClassCastException isn't reproduced: it only fires for a block
-- that insertAfter/insertBefore placed under an inline, since they set the parent directly.
local Node = {}
Node.__index = Node

type NodeFields = {
	kind: string,
	isBlock: boolean,
	_parent: Node?,
	_firstChild: Node?,
	_lastChild: Node?,
	_prev: Node?,
	_next: Node?,
	_sourceSpans: { SourceSpan }?,
	accept: (self: Node, visitor: any) -> (),
	getNext: (self: Node) -> Node?,
	getPrevious: (self: Node) -> Node?,
	getFirstChild: (self: Node) -> Node?,
	getLastChild: (self: Node) -> Node?,
	getParent: (self: Node) -> Node?,
	setParent: (self: Node, parent: Node) -> (),
	appendChild: (self: Node, child: Node) -> (),
	prependChild: (self: Node, child: Node) -> (),
	unlink: (self: Node) -> (),
	insertAfter: (self: Node, sibling: Node) -> (),
	insertBefore: (self: Node, sibling: Node) -> (),
	getSourceSpans: (self: Node) -> { SourceSpan },
	setSourceSpans: (self: Node, sourceSpans: { SourceSpan }) -> (),
	addSourceSpan: (self: Node, sourceSpan: SourceSpan) -> (),
	toString: (self: Node) -> string,
	toStringAttributes: (self: Node) -> string,
}

export type Node = typeof(setmetatable({} :: NodeFields, Node))

local EMPTY_SOURCE_SPANS: { SourceSpan } = table.freeze({})

-- PORT NOTE: Node is abstract in Java. Kind constructors (and custom nodes, which pick their own
-- kind) build their node with this.
function Node.new(kind: string, isBlock: boolean): Node
	return setmetatable({
		kind = kind,
		isBlock = isBlock,
		_parent = nil,
		_firstChild = nil,
		_lastChild = nil,
		_prev = nil,
		_next = nil,
		_sourceSpans = nil,
	}, Node) :: any
end

-- PORT NOTE: each subclass's accept(visitor) { visitor.visit(this); } becomes one dispatch on kind
-- (ROACTCHAT-2833): `visit<Kind>`, else visitCustomBlock or visitCustomNode by isBlock, which is
-- where Java's CustomBlock and CustomNode subclasses land. The visitor is untyped because
-- Visitor.lua requires Node for its parameter types.
function Node.accept(self: Node, visitor: any)
	local visit = visitor["visit" .. self.kind]
	if visit == nil then
		visit = if self.isBlock then visitor.visitCustomBlock else visitor.visitCustomNode
	end
	visit(visitor, self)
end

function Node.getNext(self: Node): Node?
	return self._next
end

function Node.getPrevious(self: Node): Node?
	return self._prev
end

function Node.getFirstChild(self: Node): Node?
	return self._firstChild
end

function Node.getLastChild(self: Node): Node?
	return self._lastChild
end

function Node.getParent(self: Node): Node?
	return self._parent
end

-- PORT NOTE: the isBlock check is Block.setParent's override.
function Node.setParent(self: Node, parent: Node)
	if self.isBlock and not parent.isBlock then
		error("Parent of block must also be block (can not be inline)")
	end
	self._parent = parent
end

function Node.appendChild(self: Node, child: Node)
	child:unlink()
	child:setParent(self)
	if self._lastChild ~= nil then
		self._lastChild._next = child
		child._prev = self._lastChild
	else
		self._firstChild = child
	end
	self._lastChild = child
end

function Node.prependChild(self: Node, child: Node)
	child:unlink()
	child:setParent(self)
	if self._firstChild ~= nil then
		self._firstChild._prev = child
		child._next = self._firstChild
		self._firstChild = child
	else
		self._firstChild = child
		self._lastChild = child
	end
end

function Node.unlink(self: Node)
	if self._prev ~= nil then
		self._prev._next = self._next
	elseif self._parent ~= nil then
		self._parent._firstChild = self._next
	end
	if self._next ~= nil then
		self._next._prev = self._prev
	elseif self._parent ~= nil then
		self._parent._lastChild = self._prev
	end
	self._parent = nil
	self._next = nil
	self._prev = nil
end

function Node.insertAfter(self: Node, sibling: Node)
	sibling:unlink()
	sibling._next = self._next
	if sibling._next ~= nil then
		sibling._next._prev = sibling
	end
	sibling._prev = self
	self._next = sibling
	sibling._parent = self._parent
	if sibling._next == nil then
		-- Without a parent this errors on nil, as Java throws NullPointerException
		(sibling._parent :: Node)._lastChild = sibling
	end
end

function Node.insertBefore(self: Node, sibling: Node)
	sibling:unlink()
	sibling._prev = self._prev
	if sibling._prev ~= nil then
		sibling._prev._next = sibling
	end
	sibling._next = self
	self._prev = sibling
	sibling._parent = self._parent
	if sibling._prev == nil then
		(sibling._parent :: Node)._firstChild = sibling
	end
end

-- PORT NOTE: Java returns an unmodifiable view. Luau has no cheap read-only view (and freezing
-- the node's own list would break addSourceSpan), so this returns the node's list itself and
-- callers must not modify it. The empty result is frozen, as List.of() is immutable.
function Node.getSourceSpans(self: Node): { SourceSpan }
	return if self._sourceSpans ~= nil then self._sourceSpans else EMPTY_SOURCE_SPANS
end

function Node.setSourceSpans(self: Node, sourceSpans: { SourceSpan })
	if #sourceSpans == 0 then
		self._sourceSpans = nil
	else
		self._sourceSpans = table.clone(sourceSpans)
	end
end

function Node.addSourceSpan(self: Node, sourceSpan: SourceSpan)
	if self._sourceSpans == nil then
		self._sourceSpans = {}
	end
	table.insert(self._sourceSpans :: { SourceSpan }, sourceSpan)
end

function Node.toString(self: Node): string
	return `{self.kind}\{{self:toStringAttributes()}}`
end

-- PORT NOTE: kinds are data, not subclasses, so Java's toStringAttributes overrides (Text, Link,
-- Image) can't be methods. A kind's module registers its override here, keyed by kind.
Node.toStringAttributesByKind = {} :: { [string]: ((node: any) -> string)? }

function Node.toStringAttributes(self: Node): string
	local toStringAttributes = Node.toStringAttributesByKind[self.kind]
	return if toStringAttributes ~= nil then toStringAttributes(self) else ""
end

return Node
