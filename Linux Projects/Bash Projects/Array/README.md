# Array

```
#!/bin/bash
name=(10 12 14 17 19)
echo ${name[0]}
echo "Printing an array one by one"
for item in "${name[@]}"
do
  echo $item
done
```

![arr](array.png)

