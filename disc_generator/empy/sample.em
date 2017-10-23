#! $Id: sample.em 5359 2014-01-23 00:33:57Z max $ $Date: 2014-01-22 16:33:57 -0800 (Wed, 22 Jan 2014) $
@# Bangpaths are handled properly (the above line will not appear).
#! This line however will appear (not the first line in the script).
@# This is a comment.  This should not appear in the processed output.
This is text.  It should appear in the processed output. 
This is a literal at sign: @@.
This is a line continuation; @
this will appear on the same line.
Note that it will actually eat any white@ space (one word).
@{
# The em.py script has to be somewhere in sys.path!
import em
}@

@# Escape codes.
This will appear on one line.@\nThis will appear on a separate line.
This is separated by a tab:@\tSee?
These are uppercase As (presuming ASCII): A, @\q1001, @\o101, @\d065, @\x41.
@{
import sys
# This is just a normal Python comment.
print("This is more text.")
}@
@# Note the @{ ... }@ convention to suppress the newline following the }.
@# Also note that comments are completely tossed: This is not expanded: @(x).

@# The basics.
@{
import sys, math
x = 4
s = 'alpha'
word = "book"
l = [3, 2, 1]
def square(n):
    return n**2
friends = ['Albert', 'Betty', 'Charles', 'Donald']
class Container(object):

    def __init__(self, value):
        self.value = value

    def square(self):
        return square(self.value)
c = Container(3)
}@
The basics: The square of @(x) is @(x**2), or @(square(x)).
Internal whitespace is fine: @( x ) squared is @( square(x) ).
Statements: @{sys.stdout.write("%d**2 = %d" % (x, square(x)))}.
Whitespace too: @{ sys.stdout.write("%d**2 = %d (still)" % (x, square(x))) }.
@{
print("But only on single-line statement expansions.")
if 1:
    print("Internal whitespace on multi-line statements is significant.")
for i in range(2):
    print("Normal Python indentation rules must be followed here.")
}@
Simple expressions: x is @x, l is @l, s is "@s," and @x squared is @square(x).
Literals too: x is @x, but would be written @@x.
Trailing dots are ignored: The value of x is @x.
Quotes outside of expansions are also ignored: This is quoted: "x is @x."
@# Whitespace is important in simple expressions.
Array subscription: The first element of l is @l[0].
But this is not: The first element of l is not @l [0].
That was equivalent to: @(l) and then [0], not @l[0].
But whitespace can go inside the brackets: @l[0] is @l[ 0 ].
Same with functions: @square(x) is @square( x ).
The same applies to the other forms.
Involved: The contained value is @c.value.
More involved: The square of the contained value is @c.square().
Following expressions: Pluralize "@word" as "@(word)s," or maybe "@word@ s."
By default str is used (@s), but you can use repr if you want (@`s`).
Conditional expressions: @(x ? "x is true" ! "x is false").
Pluralization: How many words? @x word@(x != 1 ? 's').
Protected expressions: @(foo $ "foo is not defined").
Also here, whitespace isn't important: @(bar$"bar isn't defined either").
The math module has @(math ? "been imported" $ "not been imported").
The re module has @(re ? "been imported" $ "not been imported").
Division by zero is @(x/0 $ "illegal").
To swallow errors, use None: @(buh $ None) [two spaces].
This is self-expanding: @:2 + 2:(this will get replaced with 4):
You can expand multiple times: @
@empy.expand("@empy.expand('@:2 + 2:hugalugahglughalug:')")

@# More complex examples, including classes.
@{
class C:
    def __init__(self, name):
        self.name = name

    def greetString(self):
        return "Hello, %s" % self.name

    def printGreeting(self):
        sys.stdout.write("Hello, %s" % self.name) # implicit None return

c = C("empy")
}@
c's class is @c.__class__.__name__.
c's name is @c.name.
Method call: @c.greetString().
Note that None is not expanded: @(None) [two spaces].
But the string 'None' is, of course, printed fine: @('None').
So a function can return None for side effects only: @c.printGreeting().

@# Control.
@{
a = 5 # something positive
b = -3 # something negative
z = 0 # zero
}@
If: a is @[if a > 0]positive@[end if].
If/else: b is @[if b > 0]positive@[else]negative@[end if].
If/elif/else: cmp(a, b) is @
@[if a < b]negative@[elif a > b]positive@[else]zero@[end if].
Numbers:@
@[for i in range(10)] @i@[end for].
Evens:@
@[for i in range(10)]@[if i % 2 == 1]@[continue]@[end if] @i@[end for].
Integers less than 5:@
@[for i in range(10)]@[if i >= 5]@[break]@[end if] @i@[end for].
Countdown:@
@{j = 10}@[while j >= 0] @j@{j = j - 1}@[end while].
While/else: @[while z]shouldn't get here@[else]works@[end while].
For/else:@
@[for i in range(3)] @i@[else] also works@[end for].
Tuple unpacking:@[for x in [1, 2, 3, 4]] <@x>@[end for].
Tuple unpacking:@[for x, in [[1], [2], [3], [4]]] <@x>@[end for].
Tuple unpacking:@[for (x,) in [[1], [2], [3], [4]]] <@x>@[end for].
Tuple unpacking:@[for x, y in [[1, 2], [3, 4]]] <@x, @y>@[end for].
Tuple unpacking:@[for (x), (y) in [[1, 2], [3, 4]]] <@x, @y>@[end for].
Tuple unpacking:@[for (x, y) in [[1, 2], [3, 4]]] <@x, @y>@[end for].
Tuple unpacking:@[for x, (y) in [[1, 2], [3, 4]]] <@x, @y>@[end for].
Tuple unpacking:@[for x, (y,) in [[1, [2]], [3, [4]]]] <@x, @y>@[end for].
Tuple unpacking:@[for (x), y in [[1, 2], [3, 4]]] <@x, @y>@[end for].
Tuple unpacking:@[for (x,), y in [[[1], 2], [[3], 4]]] <@x, @y>@[end for].
Tuple unpacking:@[for (x,), (y,) in [[[1], [2]], [[3], [4]]]] <@x, @y>@[end for].
More tuple unpacking:@[for (((x))), ((y),) in [[1, [2]], [3, [4]]]] <@x, @y>@[end for].
Garbage is @[try]@hglhagulahguha@[except NameError]not defined@[end try].
Division by zero is @[try]@(a/z)@[except ZeroDivisionError]illegal@[end try].
Catch all: @[try]@ghlaghlhagl@[except]something happened@[end try].
Finally works: @
@[try]@[try]@(1/0)@[finally]finally, @[end try]@[except]and caught@[end try].
@[def sign(x)]@x is @[if x > 0]positive@[elif x < 0]negative@[else]zero@[end if]@[end def]@
Define: @sign(a), @sign(b), @sign(z).

@# Diversions.  Again, a trailing @ is used to suppress the following newline.
A. This text is undiverted.
@empy.startDiversion(1)@
C. This text is diverted.
@empy.stopDiverting()@
B. This text is also undiverted.
@empy.playDiversion(1)@
D. Again, this text is undiverted.
@empy.startDiversion('a')@
E. This text is diverted and then undiverted@
@empy.stopDiverting()@
@empy.replayDiversion('a').
@empy.playDiversion('a') (this should appear twice).
@empy.startDiversion('q')@
F. This text is diverted and then cancelled.
@empy.playDiversion('q')@
G. This text is again undiverted.
@empy.startDiversion('x')@
X. This text will be purged and should not appear!
@empy.stopDiverting()@
H. There should be one remaining diversion: @empy.getAllDiversions().
@empy.purgeDiversion('x')@
I. But not after purging it: @empy.getAllDiversions().
@{
# Finally, make a manual diversion and manipulate it.
empy.createDiversion('z')
zDiversion = empy.retrieveDiversion('z')
zDiversion.write("J. This should be the final diversion, created manually.\n")
empy.playDiversion('z')
}@

@# Parsing checks.
Blanks: @(''), @(""), @(''''''), @("""""").
Single quotes: @('\''), @("'"), @("""'""").
Double quotes: @("\""), @('"'), @('''"''').
Triple quotes: @("\"\"\""), @('"""'), @('\'\'\''), @("'''").
Quotes surrounded by spaces: @(""" " """), @(''' ' ''').
At signs: @('@'), @("@"), @('''@'''), @("""@""").
Close parentheses: @(')'), @(")"), @((")")), @((')')).
Close parentheses in quotes: @("')'"), @('\')\'').
Close braces with an intervening space: @
@{sys.stdout.write("}")} @{sys.stdout.write('}')}.
Repr of a backquote: @`'`'`.
Exes: @("?"?'x'), @(0?"!"!'x'), @(0?":":'x'), @("]"?'x'), @(1?"x"!"]").
Dollar signs: @("$"$None), @(asdf?"$"$"$"), @(1?asdf$"$").
These are strings:
@'single quoted string'
@"double quoted string"
@'single quoted string with escaped \'single quotes\''
@"double quoted string with escaped \"double quotes\""
@'''triple single quoted string'''
@"""triple double quoted string"""
@'single quoted string with "double quotes"'
@"double quoted string with 'single quotes'"
@'''triple single quoted continued \
string'''
@"""triple double quoted continued \
string"""
@'''triple single quoted
...multi-line string'''
@"""triple double quoted
... multi-line string"""

@# Significators.
@%a
@%b 
@%c "x"
@%d "x" 
@%e "x y"
@%f "x y" 
Encountered significators:
a and b should be None: @`__a__`, @`__b__`
c and d should be 'x': @`__c__`, @`__d__`
e and f should be 'x y': @`__e__`, @`__f__`

@# Filters.
This line should be in mixed case.
@empy.setFilter(lambda x: x.lower())@
This line should be all lowercase.
@empy.setFilter(lambda x: x.upper())@
This line should be all uppercase (how gauche).
@empy.setFilter([em.LineBufferedFilter(), lambda x: '[%s]\n' % x[:-1]])@
This line should be bracketed.
So should this line.
@empy.setFilter([em.SizeBufferedFilter(5), lambda x: '*' + x])@
There should be stars every five characters on this line.
@empy.nullFilter()@
This line should not appear at all!
@empy.resetFilter()@
This line should be back to mixed case.
@empy.attachFilter(lambda x: x.upper())@
@empy.attachFilter(em.LineBufferedFilter())@
@empy.attachFilter(lambda x: '[%s]\n' % x[:-1])@
This line should be all uppercase with brackets.
@empy.resetFilter()@
This line should be back to mixed case (again).

@# Contexts, metaoperations.
@{
class FakeFile(object):

   def __init__(self, line):
      self.lines = [line]

   def read(self):
      return '\n'.join(self.lines) + '\n'

   def readline(self):
      if self.lines:
          return self.lines.pop(0)
      else:
          return ''

   def close(self): pass
def context():
    return "%s:%d" % empy.identify()
stringFile = FakeFile("2 + 2 = @(2 + 2) [@context()].\n")
}@
The new context is @context().
File inclusion [@context()]: @empy.include(stringFile)@
Expansion [@context()]: @
@empy.expand("This should be appear [@context()]") @
on the same line as this [@context()].
More expansion [@context()]: @
@{sys.stdout.write(empy.expand("Another expansion [@context()]"))}.
This is the next line [@context()].
Quoting: @empy.quote("x when quoted would be '@x' or @x").
More quoting: @empy.quote("This will be @doubled but '''@this is not'''").
Here's the last view of the old context: @context().
Creating a new context ...
@empy.pushContext()@
The current context is: @context().
@?NewName
The context name should now be 'NewName': @context().
@!1000
The line number should now be 1000: @context().
@empy.popContext()@
Back to the old context: @context().

@# Embedded interpreters and standalone expansion.
@{
q = 1
}@
Interpreter's q is @q.
@{
try:
    i = em.Interpreter()
    i.string("@{q = 10}")
    i.string("Embedded interpreter's q is @q.\n")
finally:
    i.shutdown()
}@
Interpreter's q is still @q; the embedded interpreter had no effect.
Standalone expansion: @em.expand("1 + 1 is @(1 + 1).")
With locals: @em.expand("@x + @y is @(x + y).", x=2, y=3)
@{
g = {}
}@
With globals: @em.expand("@{x = 10}g's x is @x.", g)
Still with globals: @em.expand("g's x + 1 is @(x + 1).", g)
g's x is still @g['x'].

@# Hooks.
@{
class SampleHook(em.Hook):
    def null(self):
        self.interpreter.write('[SampleHook.null invoked]')

sampleHook = SampleHook()
empy.addHook(sampleHook)
}@
Invoking the sample hook: @empy.invokeHook('null').
@{
empy.removeHook(sampleHook)
}@

@# Custom.
@{
def customCallback(contents, empy=empy):
    empy.write('[%s]' % contents)
empy.registerCallback(customCallback)
}@
Using a custom markup: @<This appears in brackets>.
Again: @<<There are angle brackets in this one>>.
Once more: @<This is a right angle bracket in quotes: ">">.
@{
empy.deregisterCallback()
}@

@# Finals; note these are evaluated in reverse order.
@empy.atExit(lambda: empy.write("This is the penultimate line.\n"))@
