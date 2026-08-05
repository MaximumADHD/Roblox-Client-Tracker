---
category: Actions
---

## Overview

`Pagination` navigates paginated content. Variants: **MultiPage** (page numbers), **SinglePage** (current page in the middle), **NoPage** (nav only). Supports [[PaginationSize]] `Small` and `Medium`.

---

## Usage

Pass `page` and `onActivated`. **MultiPage** also needs `count`.

```luau
return React.createElement(Pagination, {
	variant = PaginationVariant.MultiPage,
	count = 10,
	page = 5,
	onActivated = function(page: number) end,
})
```

For **SinglePage** / **NoPage** without `count`, use `hasNextPage` and optionally `hasPreviousPage`. Use `hasFirstLastButtons` for jump-to-first/last.

`ref` resolves to the first interactive slot. Pass `NextSelectionUp` / `NextSelectionDown` to connect vertical focus with siblings.

---
