## Inference
each hashing assigning operation is just marginally different

## Output

### my_hash[:t] = 1

```sh
       user     system      total        real
   0.760000   0.030000   0.790000 (  0.808573)
```

### my_hash.store(:t, 1)

```sh
       user     system      total        real
   0.810000   0.030000   0.840000 (  0.842075)
```

### my_hash = { :t => 1}

```sh
       user     system      total        real
   0.750000   0.020000   0.770000 (  0.789766)
```