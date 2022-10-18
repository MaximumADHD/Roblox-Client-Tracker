--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/1951bce42092123e844763b6a8e985a8a3327511/src/__testUtils__/kitchenSinkQuery.js

local kitchenSinkQuery: string = [[

query queryName($foo: ComplexType, $site: Site = MOBILE) @onQuery {
  whoever123is: node(id: [123, 456]) {
    id
    ... on User @onInlineFragment {
      field2 {
        id
        alias: field1(first: 10, after: $foo) @include(if: $foo) {
          id
          ...frag @onFragmentSpread
        }
      }
    }
    ... @skip(unless: $foo) {
      id
    }
    ... {
      id
    }
  }
}

mutation likeStory @onMutation {
  like(story: 123) @onField {
    story {
      id @onField
    }
  }
}

subscription StoryLikeSubscription($input: StoryLikeSubscribeInput)
  @onSubscription {
  storyLikeSubscribe(input: $input) {
    story {
      likers {
        count
      }
      likeSentence {
        text
      }
    }
  }
}

fragment frag on Friend @onFragmentDefinition {
  foo(
    size: $size
    bar: $b
    obj: {
      key: "value"
      block: """
      block string uses \"""
      """
    }
  )
}

{
  unnamed(truthy: true, falsy: false, nullish: null)
  query
}

query {
  __typename
}
]]

return {
	kitchenSinkQuery = kitchenSinkQuery,
}
