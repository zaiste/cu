# cu - speed up your cURL experience

Simple Bourne script that provides handy shortcuts for cURL invocation.

## Example

Type

```
cu post json '{"name": "Zaiste"}' localhost:4000
```

instead of

```
curl -X POST -H 'Content-Type: application/json' \
    -d '{"name": "Zaiste"}' localhost:4000
```

## Install

Source the script in your `.bashrc` or `.zshrc`.

```
source /path/to/the/script/cu.sh
```

MIT
