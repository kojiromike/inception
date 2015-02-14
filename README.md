# Inception

When you wake up, you will believe.

## What?

It runs a container nested to an arbitrary depth.

## How?

Recursion.

Set `DINCEPTION\_DEPTH` to the nesting level you want.
Like this:

```
$ DINCEPTION_DEPTH=0 ./dinception run --rm -ti busybox echo hi
hi
$ DINCEPTION_DEPTH=1 ./dinception run --rm -ti busybox echo hi
Unable to find image 'busybox:latest' locally
511136ea3c5a: Pull complete 
df7546f9f060: Pull complete 
ea13149945cb: Pull complete 
4986bf8c1536: Pull complete 
busybox:latest: The image you are pulling has been verified. Important: image verification is a tech preview feature and should not be relied on to provide security.
Status: Downloaded newer image for busybox:latest
hi
$ DINCEPTION_DEPTH=2 ./dinception run --rm -ti busybox echo hi
Unable to find image 'kojiromike/dind:latest' locally
Pulling repository kojiromike/dind
1d6a20dfc6e5: Download complete 
511136ea3c5a: Download complete 
53f858aaaf03: Download complete 
837339b91538: Download complete 
615c102e2290: Download complete 
b39b81afc8ca: Download complete 
093c0693ca92: Download complete 
1cda31fe4cae: Download complete 
fbe7c81895b1: Download complete 
005eb2796bcb: Download complete 
5a692665e71e: Download complete 
f871fb30ae87: Download complete 
Status: Downloaded newer image for kojiromike/dind:latest
Unable to find image 'busybox:latest' locally
511136ea3c5a: Pull complete 
df7546f9f060: Pull complete 
ea13149945cb: Pull complete 
4986bf8c1536: Pull complete 
busybox:latest: The image you are pulling has been verified. Important: image verification is a tech preview feature and should not be relied on to provide security.
Status: Downloaded newer image for busybox:latest
hi
```

## Why?

Because it's Friday.

Also, on the off chance someone breaks out of a container,
they will just be in another container. So they'll break
out again. And then they'll be in another container.

But mostly because it's Friday and doing crazy things with
Docker is more fun on Friday.

## Opportunities for Improvement

It'd be nice not to have to pull containers at every level.
I think I'd need `kojiromike/dind` to contain itself, which
is hard.

Right now you have to use my `dind`.
