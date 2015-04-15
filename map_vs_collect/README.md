## Inference
``collect`` is minutely faster than ``map``

## Output

### Map

```sh
       user     system      total        real
   1.260000   0.010000   1.270000 (  1.274423)
```

### Collect

```sh
       user     system      total        real
   1.240000   0.010000   1.250000 (  1.267614)

```

## benchamrk/ips result

```sh
Calculating -------------------------------------
             collect     1.000  i/100ms
                 map     1.000  i/100ms
-------------------------------------------------
             collect     10.477  (± 9.5%) i/s -     53.000 
                 map     10.328  (± 9.7%) i/s -     52.000 

Comparison:
             collect:       10.5 i/s
                 map:       10.3 i/s - 1.01x slower
```
