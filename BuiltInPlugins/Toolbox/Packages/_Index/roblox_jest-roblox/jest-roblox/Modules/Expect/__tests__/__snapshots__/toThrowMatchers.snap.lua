-- upstream: https://github.com/facebook/jest/blob/v26.5.3/packages/expect/src/__tests__/__snapshots__/toThrowMatchers.test.ts.snap

-- deviation: We don't print 'Thrown value:' or 'Received value:' for strings
-- we print 'Received message:' since the treatment of
-- string errors is the same as Error polyfill errors for us

local snapshots = {}

snapshots['toThrow asymmetric any-Class fail isNot false 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoThrow[2m([22m[32mexpected[39m[2m)[22m

Expected asymmetric matcher: [32mAny<Err2>[39m

Received name:    [31m"Error"[39m
Received message: [31m"apple"[39m

      at jestExpect (packages/expect/src/__tests__/toThrowMatchers-test.js:24:74)]=]

snapshots['toThrow asymmetric any-Class fail isNot true 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoThrow[2m([22m[32mexpected[39m[2m)[22m

Expected asymmetric matcher: never [32mAny<Err>[39m

Received name:    [31m"Error"[39m
Received message: [31m"apple"[39m

      at jestExpect (packages/expect/src/__tests__/toThrowMatchers-test.js:24:74)]=]

snapshots['toThrow asymmetric anything fail isNot true 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoThrow[2m([22m[32mexpected[39m[2m)[22m

Expected asymmetric matcher: never [32mAnything[39m

Received name:    [31m"Error"[39m
Received message: [31m"apple"[39m

      at jestExpect (packages/expect/src/__tests__/toThrowMatchers-test.js:24:74)]=]

-- deviation: output has anonymous instead of asymmetricMatch
snapshots['toThrow asymmetric no-symbol fail isNot false 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoThrow[2m([22m[32mexpected[39m[2m)[22m

Expected asymmetric matcher: [32m{"asymmetricMatch": [Function anonymous]}[39m

Received name:    [31m"Error"[39m
Received message: [31m"apple"[39m

      at jestExpect (packages/expect/src/__tests__/toThrowMatchers-test.js:24:74)]=]

-- deviation: output has anonymous instead of asymmetricMatch
snapshots['toThrow asymmetric no-symbol fail isNot true 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoThrow[2m([22m[32mexpected[39m[2m)[22m

Expected asymmetric matcher: never [32m{"asymmetricMatch": [Function anonymous]}[39m

Received name:    [31m"Error"[39m
Received message: [31m"apple"[39m

      at jestExpect (packages/expect/src/__tests__/toThrowMatchers-test.js:24:74)]=]

snapshots['toThrow asymmetric objectContaining fail isNot false 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoThrow[2m([22m[32mexpected[39m[2m)[22m

Expected asymmetric matcher: [32mObjectContaining {"name": "NotError"}[39m

Received name:    [31m"Error"[39m
Received message: [31m"apple"[39m

      at jestExpect (packages/expect/src/__tests__/toThrowMatchers-test.js:24:74)]=]

snapshots['toThrow asymmetric objectContaining fail isNot true 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoThrow[2m([22m[32mexpected[39m[2m)[22m

Expected asymmetric matcher: never [32mObjectContaining {"name": "Error"}[39m

Received name:    [31m"Error"[39m
Received message: [31m"apple"[39m

      at jestExpect (packages/expect/src/__tests__/toThrowMatchers-test.js:24:74)]=]

snapshots['toThrow error class did not throw at all 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoThrow[2m([22m[32mexpected[39m[2m)[22m

Expected constructor: [32mErr[39m

Received function never threw]=]

snapshots['toThrow error class threw, but class did not match (error) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoThrow[2m([22m[32mexpected[39m[2m)[22m

Expected constructor: [32mErr2[39m
Received constructor: [31mErr[39m

Received message: [31m"apple"[39m

      at jestExpect (packages/expect/src/__tests__/toThrowMatchers-test.js:24:74)]=]

snapshots['toThrow error class threw, but class did not match (non-error falsey) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoThrow[2m([22m[32mexpected[39m[2m)[22m

Expected constructor: [32mErr2[39m

Received value: [31m"nil"[39m]=]

snapshots['toThrow error class threw, but class should not match (error subclass) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoThrow[2m([22m[32mexpected[39m[2m)[22m

Expected constructor: never [32mErr[39m
Received constructor:       [31mSubErr[39m extends [32mErr[39m

Received message: [31m"apple"[39m

      at jestExpect (packages/expect/src/__tests__/toThrowMatchers-test.js:24:74)]=]

snapshots['toThrow error class threw, but class should not match (error subsubclass) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoThrow[2m([22m[32mexpected[39m[2m)[22m

Expected constructor: never [32mErr[39m
Received constructor:       [31mSubSubErr[39m extends … extends [32mErr[39m

Received message: [31m"apple"[39m

      at jestExpect (packages/expect/src/__tests__/toThrowMatchers-test.js:24:74)]=]

snapshots['toThrow error class threw, but class should not match (error) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoThrow[2m([22m[32mexpected[39m[2m)[22m

Expected constructor: never [32mErr[39m

Received message: [31m"apple"[39m

      at jestExpect (packages/expect/src/__tests__/toThrowMatchers-test.js:24:74)]=]

snapshots['toThrow error-message fail isNot false 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoThrow[2m([22m[32mexpected[39m[2m)[22m

Expected message: [32m"apple"[39m
Received message: [31m"banana"[39m]=]

snapshots['toThrow error-message fail isNot true 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoThrow[2m([22m[32mexpected[39m[2m)[22m

Expected message: never [32m"Invalid array length"[39m]=]

snapshots['toThrow error-message fail multiline diff highlight incorrect expected space 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoThrow[2m([22m[32mexpected[39m[2m)[22m

[32m- Expected message  - 1[39m
[31m+ Received message  + 1[39m

[32m- There is no route defined for key Settings.[7m [27m[39m
[31m+ There is no route defined for key Settings.[39m
[2m  Must be one of: 'Home'[22m]=]

snapshots['toThrow expected is undefined threw, but should not have (non-error falsey) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoThrow[2m()[22m

Thrown value: [31m"nil"[39m]=]

snapshots['toThrow invalid actual 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoThrow[2m()[22m

[1mMatcher error[22m: [31mreceived[39m value must be a function

Received has type:  string
Received has value: [31m"a string"[39m]=]

snapshots['toThrow invalid arguments 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoThrow[2m([22m[32mexpected[39m[2m)[22m

[1mMatcher error[22m: [32mexpected[39m value must be a string or regular expression or class or error

Expected has type:  number
Expected has value: [32m111[39m]=]

snapshots['toThrow regexp did not throw at all 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoThrow[2m([22m[32mexpected[39m[2m)[22m

Expected pattern: [32m/apple/[39m

Received function never threw]=]

snapshots['toThrow regexp threw, but message did not match (error) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoThrow[2m([22m[32mexpected[39m[2m)[22m

Expected pattern: [32m/banana/[39m
Received message: [31m"apple"[39m

      at jestExpect (packages/expect/src/__tests__/toThrowMatchers-test.js:24:74)]=]

-- deviation: we print "0" instead of 0
snapshots['toThrow regexp threw, but message did not match (non-error falsey) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoThrow[2m([22m[32mexpected[39m[2m)[22m

Expected pattern: [32m/^[123456789]\d*/[39m
Received value:   [31m"0"[39m
]=]

snapshots['toThrow regexp threw, but message should not match (error) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoThrow[2m([22m[32mexpected[39m[2m)[22m

Expected pattern: never [32m/ array /[39m
Received message:       [31m"Invalid[39m[7m array [27m[31mlength[39m"

      at jestExpect (packages/expect/src/__tests__/toThrowMatchers-test.js:24:74)]=]

-- deviation: we print "404" instead of 404
snapshots['toThrow regexp threw, but message should not match (non-error truthy) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoThrow[2m([22m[32mexpected[39m[2m)[22m

Expected pattern: never [32m/^[123456789]\d*/[39m
Received value:         [31m"404"[39m
]=]

snapshots['toThrow substring did not throw at all 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoThrow[2m([22m[32mexpected[39m[2m)[22m

Expected substring: [32m"apple"[39m

Received function never threw]=]

snapshots['toThrow substring threw, but message did not match (error) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoThrow[2m([22m[32mexpected[39m[2m)[22m

Expected substring: [32m"banana"[39m
Received message:   [31m"apple"[39m

      at jestExpect (packages/expect/src/__tests__/toThrowMatchers-test.js:24:74)]=]

snapshots['toThrow substring threw, but message did not match (non-error falsey) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoThrow[2m([22m[32mexpected[39m[2m)[22m

Expected substring: [32m"Server Error"[39m
Received value:     [31m""[39m]=]

snapshots['toThrow substring threw, but message should not match (error) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoThrow[2m([22m[32mexpected[39m[2m)[22m

Expected substring: never [32m"array"[39m
Received message:         [31m"Invalid [39m[7marray[27m[31m length[39m"

      at jestExpect (packages/expect/src/__tests__/toThrowMatchers-test.js:24:74)]=]

snapshots['toThrow substring threw, but message should not match (non-error truthy) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoThrow[2m([22m[32mexpected[39m[2m)[22m

Expected substring: never [32m"Server Error"[39m
Received value:           [31m"Internal Server Error"[39m]=]

snapshots['toThrowError asymmetric any-Class fail isNot false 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoThrowError[2m([22m[32mexpected[39m[2m)[22m

Expected asymmetric matcher: [32mAny<Err2>[39m

Received name:    [31m"Error"[39m
Received message: [31m"apple"[39m

      at jestExpect (packages/expect/src/__tests__/toThrowMatchers-test.js:24:74)]=]

snapshots['toThrowError asymmetric any-Class fail isNot true 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoThrowError[2m([22m[32mexpected[39m[2m)[22m

Expected asymmetric matcher: never [32mAny<Err>[39m

Received name:    [31m"Error"[39m
Received message: [31m"apple"[39m

      at jestExpect (packages/expect/src/__tests__/toThrowMatchers-test.js:24:74)]=]

snapshots['toThrowError asymmetric anything fail isNot true 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoThrowError[2m([22m[32mexpected[39m[2m)[22m

Expected asymmetric matcher: never [32mAnything[39m

Received name:    [31m"Error"[39m
Received message: [31m"apple"[39m

      at jestExpect (packages/expect/src/__tests__/toThrowMatchers-test.js:24:74)]=]

-- deviation: output has anonymous instead of asymmetricMatch
snapshots['toThrowError asymmetric no-symbol fail isNot false 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoThrowError[2m([22m[32mexpected[39m[2m)[22m

Expected asymmetric matcher: [32m{"asymmetricMatch": [Function anonymous]}[39m

Received name:    [31m"Error"[39m
Received message: [31m"apple"[39m

      at jestExpect (packages/expect/src/__tests__/toThrowMatchers-test.js:24:74)]=]

-- deviation: output has anonymous instead of asymmetricMatch
snapshots['toThrowError asymmetric no-symbol fail isNot true 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoThrowError[2m([22m[32mexpected[39m[2m)[22m

Expected asymmetric matcher: never [32m{"asymmetricMatch": [Function anonymous]}[39m

Received name:    [31m"Error"[39m
Received message: [31m"apple"[39m

      at jestExpect (packages/expect/src/__tests__/toThrowMatchers-test.js:24:74)]=]

snapshots['toThrowError asymmetric objectContaining fail isNot false 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoThrowError[2m([22m[32mexpected[39m[2m)[22m

Expected asymmetric matcher: [32mObjectContaining {"name": "NotError"}[39m

Received name:    [31m"Error"[39m
Received message: [31m"apple"[39m

      at jestExpect (packages/expect/src/__tests__/toThrowMatchers-test.js:24:74)]=]

snapshots['toThrowError asymmetric objectContaining fail isNot true 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoThrowError[2m([22m[32mexpected[39m[2m)[22m

Expected asymmetric matcher: never [32mObjectContaining {"name": "Error"}[39m

Received name:    [31m"Error"[39m
Received message: [31m"apple"[39m

      at jestExpect (packages/expect/src/__tests__/toThrowMatchers-test.js:24:74)]=]

snapshots['toThrowError error class did not throw at all 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoThrowError[2m([22m[32mexpected[39m[2m)[22m

Expected constructor: [32mErr[39m

Received function never threw]=]

snapshots['toThrowError error class threw, but class did not match (error) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoThrowError[2m([22m[32mexpected[39m[2m)[22m

Expected constructor: [32mErr2[39m
Received constructor: [31mErr[39m

Received message: [31m"apple"[39m

      at jestExpect (packages/expect/src/__tests__/toThrowMatchers-test.js:24:74)]=]

snapshots['toThrowError error class threw, but class did not match (non-error falsey) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoThrowError[2m([22m[32mexpected[39m[2m)[22m

Expected constructor: [32mErr2[39m

Received value: [31m"nil"[39m]=]

snapshots['toThrowError error class threw, but class should not match (error subclass) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoThrowError[2m([22m[32mexpected[39m[2m)[22m

Expected constructor: never [32mErr[39m
Received constructor:       [31mSubErr[39m extends [32mErr[39m

Received message: [31m"apple"[39m

      at jestExpect (packages/expect/src/__tests__/toThrowMatchers-test.js:24:74)]=]

snapshots['toThrowError error class threw, but class should not match (error subsubclass) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoThrowError[2m([22m[32mexpected[39m[2m)[22m

Expected constructor: never [32mErr[39m
Received constructor:       [31mSubSubErr[39m extends … extends [32mErr[39m

Received message: [31m"apple"[39m

      at jestExpect (packages/expect/src/__tests__/toThrowMatchers-test.js:24:74)]=]

snapshots['toThrowError error class threw, but class should not match (error) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoThrowError[2m([22m[32mexpected[39m[2m)[22m

Expected constructor: never [32mErr[39m

Received message: [31m"apple"[39m

      at jestExpect (packages/expect/src/__tests__/toThrowMatchers-test.js:24:74)]=]

snapshots['toThrowError error-message fail isNot false 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoThrowError[2m([22m[32mexpected[39m[2m)[22m

Expected message: [32m"apple"[39m
Received message: [31m"banana"[39m]=]

snapshots['toThrowError error-message fail isNot true 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoThrowError[2m([22m[32mexpected[39m[2m)[22m

Expected message: never [32m"Invalid array length"[39m]=]

snapshots['toThrowError error-message fail multiline diff highlight incorrect expected space 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoThrowError[2m([22m[32mexpected[39m[2m)[22m

[32m- Expected message  - 1[39m
[31m+ Received message  + 1[39m

[32m- There is no route defined for key Settings.[7m [27m[39m
[31m+ There is no route defined for key Settings.[39m
[2m  Must be one of: 'Home'[22m]=]

snapshots['toThrowError expected is undefined threw, but should not have (non-error falsey) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoThrowError[2m()[22m

Thrown value: [31m"nil"[39m]=]

snapshots['toThrowError invalid actual 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoThrowError[2m()[22m

[1mMatcher error[22m: [31mreceived[39m value must be a function

Received has type:  string
Received has value: [31m"a string"[39m]=]

snapshots['toThrowError invalid arguments 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoThrowError[2m([22m[32mexpected[39m[2m)[22m

[1mMatcher error[22m: [32mexpected[39m value must be a string or regular expression or class or error

Expected has type:  number
Expected has value: [32m111[39m]=]

snapshots['toThrowError regexp did not throw at all 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoThrowError[2m([22m[32mexpected[39m[2m)[22m

Expected pattern: [32m/apple/[39m

Received function never threw]=]

snapshots['toThrowError regexp threw, but message did not match (error) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoThrowError[2m([22m[32mexpected[39m[2m)[22m

Expected pattern: [32m/banana/[39m
Received message: [31m"apple"[39m

      at jestExpect (packages/expect/src/__tests__/toThrowMatchers-test.js:24:74)]=]

-- deviation: we print "0" instead of 0
snapshots['toThrowError regexp threw, but message did not match (non-error falsey) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoThrowError[2m([22m[32mexpected[39m[2m)[22m

Expected pattern: [32m/^[123456789]\d*/[39m
Received value:   [31m"0"[39m
]=]

snapshots['toThrowError regexp threw, but message should not match (error) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoThrowError[2m([22m[32mexpected[39m[2m)[22m

Expected pattern: never [32m/ array /[39m
Received message:       [31m"Invalid[39m[7m array [27m[31mlength[39m"

      at jestExpect (packages/expect/src/__tests__/toThrowMatchers-test.js:24:74)]=]

-- deviation: we print "404" instead of 404
snapshots['toThrowError regexp threw, but message should not match (non-error truthy) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoThrowError[2m([22m[32mexpected[39m[2m)[22m

Expected pattern: never [32m/^[123456789]\d*/[39m
Received value:         [31m"404"[39m
]=]

snapshots['toThrowError substring did not throw at all 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoThrowError[2m([22m[32mexpected[39m[2m)[22m

Expected substring: [32m"apple"[39m

Received function never threw]=]

snapshots['toThrowError substring threw, but message did not match (error) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoThrowError[2m([22m[32mexpected[39m[2m)[22m

Expected substring: [32m"banana"[39m
Received message:   [31m"apple"[39m

      at jestExpect (packages/expect/src/__tests__/toThrowMatchers-test.js:24:74)]=]

snapshots['toThrowError substring threw, but message did not match (non-error falsey) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoThrowError[2m([22m[32mexpected[39m[2m)[22m

Expected substring: [32m"Server Error"[39m
Received value:     [31m""[39m]=]

snapshots['toThrowError substring threw, but message should not match (error) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoThrowError[2m([22m[32mexpected[39m[2m)[22m

Expected substring: never [32m"array"[39m
Received message:         [31m"Invalid [39m[7marray[27m[31m length[39m"

      at jestExpect (packages/expect/src/__tests__/toThrowMatchers-test.js:24:74)]=]

snapshots['toThrowError substring threw, but message should not match (non-error truthy) 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoThrowError[2m([22m[32mexpected[39m[2m)[22m

Expected substring: never [32m"Server Error"[39m
Received value:           [31m"Internal Server Error"[39m]=]

snapshots['Lua tests correctly prints the stack trace for Lua Error error 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoThrow[2m()[22m

Error name:    [31m"Error"[39m
Error message: [31m""[39m]=]

snapshots['Lua tests correctly prints the stack trace for Lua string error 1'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mnever[2m.[22mtoThrow[2m()[22m

Thrown value: [31m""[39m]=]

snapshots['Lua tests correctly prints the stack trace for Lua string error 2'] = [=[
[2mexpect([22m[31mreceived[39m[2m).[22mtoThrow[2m([22m[32mexpected[39m[2m)[22m

Expected substring: [32m"wrong information"[39m
Received value:     [31m""[39m]=]
return snapshots