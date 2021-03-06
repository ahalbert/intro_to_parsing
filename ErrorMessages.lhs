
[[error-messages]]
= Error messages

In this tutorial, we will start looking at the error messages
generated by Parsec and how we can influence to improve them.

TODO:

review the different methods of generating failure in parsec and what
they look like, including choice.

examine how rearranging parsers can change the error messages,
committing to a parsing branch to improve the messages

also possibly look at adding additional parsing to detect common
errors to provide a nicer error messages

maybe talk about the idea of being permissive in the parsing proper
stage, then doing additional syntax-type checks on the ast after


== ways of generating errors in parsec

== how parsec combines errors or drops them into the void


== Parsing tpch

Let's try the parser out on the TPC-H queries.

```
```

Summary of errors so far:
q1: typed literal: type_name 'literal value'
q2: scalar subquery
q3: typed literal
q4: typed literal
q5: typed literal
q6: typed literal
q7: ??
q8: extract??
q9: extract ??
q10: typed literal
q11: scalar sub query
q12: ??
q13: not like??
q14: decimal literal
q15: cte
q16: count distinct
q17: decimal literal
q18: in subquery
q19: in literal list
q20: in subquery
q21: exists subquery
q22: substring

TODO: try to figure out each issue. Not very easy: the error messages
are not very good.

Do some ad hoc stuff to try to improve each error message? Keep
simplifying expressions then try to understand specific principles.
Then make some generalizations that can be made across the parser


== value expressions in isolation

We can start with the real error code now by considering the
valueexpression parser in isolation.

ideas:
error inside function parameter list
bad identifier
unrecognised operator
unrecognised chars
unmatching parens
keyword errors in case
unterminated string lit
3 dot components
binary op with missing second arg
associativity errors with binary ops?
blacklist errors

== query expressions

mispelling keywords at this level
clauses in wrong order
adding extra tokens or removing them at clause/value expression
boundaries

== summarizing?

== updated parsing code with improved error message behaviour

