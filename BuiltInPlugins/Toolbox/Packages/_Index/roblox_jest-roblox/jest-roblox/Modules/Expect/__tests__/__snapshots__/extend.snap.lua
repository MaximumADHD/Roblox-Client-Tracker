-- upstream: https://github.com/facebook/jest/blob/v26.5.3/packages/expect/src/__tests__/__snapshots__/extend.test.ts.snap

local snapshots = {}

snapshots['defines asymmetric unary matchers 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoEqual[2m([22m[32mexpected[39m[2m) -- deep equality[22m

[32m- Expected  - 1[39m
[31m+ Received  + 1[39m

[2m  Table {[22m
[32m-   "value": toBeDivisibleBy<2>,[39m
[31m+   "value": 3,[39m
[2m  }[22m]=]

snapshots['defines asymmetric unary matchers that can be prefixed by never 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoEqual[2m([22m[32mexpected[39m[2m) -- deep equality[22m

[32m- Expected  - 1[39m
[31m+ Received  + 1[39m

[2m  Table {[22m
[32m-   "value": never.toBeDivisibleBy<2>,[39m
[31m+   "value": 2,[39m
[2m  }[22m]=]

snapshots['defines asymmetric variadic matchers 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoEqual[2m([22m[32mexpected[39m[2m) -- deep equality[22m

[32m- Expected  - 1[39m
[31m+ Received  + 1[39m

[2m  Table {[22m
[32m-   "value": toBeWithinRange<4, 11>,[39m
[31m+   "value": 3,[39m
[2m  }[22m]=]

snapshots['defines asymmetric variadic matchers that can be prefixed by never 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoEqual[2m([22m[32mexpected[39m[2m) -- deep equality[22m

[32m- Expected  - 1[39m
[31m+ Received  + 1[39m

[2m  Table {[22m
[32m-   "value": never.toBeWithinRange<1, 3>,[39m
[31m+   "value": 2,[39m
[2m  }[22m]=]

snapshots['is available globally when matcher is unary 1'] = "expected 15 to be divisible by 2"

snapshots['is available globally when matcher is variadic 1'] = "expected 15 to be within range 1 - 3"

snapshots['is ok if there is no message specified 1'] = "No message was specified for this matcher."

snapshots['prints the Symbol into the error message 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoEqual[2m([22m[32mexpected[39m[2m) -- deep equality[22m

[32m- Expected  - 1[39m
[31m+ Received  + 1[39m

[2m  Table {[22m
[32m-   "a": toBeSymbol<Symbol(bar)>,[39m
[31m+   "a": Symbol(foo),[39m
[2m  }[22m]=]

return snapshots