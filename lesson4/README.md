# Lesson 4: Make your own RGL API

In this directory, we have two resource modules: NanoAPIEng and FullAPIEng. Look at the modules and read
[this section of my RGL post](https://inariksit.github.io/gf/2021/02/15/rgl-api-core-extensions.html#rgl-api-finally),
if you haven't read it already.

<!-- The RGL API is all about defining opers as shorthands for the complex RGL lins.  -->

### Tasks for lesson 4

* Create an overloaded `mkN` in NanoAPIEng.

You need to create at least two overload instances:

```haskell
oper
  mkN = overload {
    mkN : {- some argument(s) -} -> N ; -- The first overload instance
    mkN : {- other argument(s) -} -> N  -- The second overload instance
  } ;
```

In the definitions of the different `mkN` instances, you can call the opers `noun` and  `regNoun` from lesson1/NanoRGLEng.

On your first attempt, you may get this error message.

```
> - compiling NanoAPIEng.gf...

NanoAPIEng.gf:
   NanoAPIEng.gf:
     Happened in overloading mkN
       type of regNoun
      expected: Str -> {s : NanoRGLEng.Number => Str; lock_N : {}}
      inferred: Str -> {s : NanoRGLEng.Number => Str}

   ** Double-check that type signature and number of arguments match.
```

If you didn't get the error message, check if you got these warnings instead.

```
> compiling NanoAPIEng.gf...
NanoAPIEng.gf:
   NanoAPIEng.gf:
     Happened in overloading mkN
      Warning: missing lock field lock_N
      Warning: missing lock field lock_N
      Warning: missing lock field lock_N
      Warning: missing lock field lock_N
  write file NanoAPIEng.gfo
```

If you got either the error or the warnings, you should get rid of them. To do that, you can find the answer in [this blog post](https://inariksit.github.io/gf/2018/05/25/subtyping-gf.html#lock-fields). (If you find that the linked section doesn't make sense on its own, you can read the blog post from the beginning.)

* If you extended the NanoRGL in lesson 1, add your functions to the API as well.
