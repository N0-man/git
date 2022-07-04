version=1.0.2

if [ $(git tag -l "$version") ]; then
    echo yes
else
    echo no
fi

if git rev-parse -q --verify "refs/tags/$version" >/dev/null; then
    echo "found"
else
    echo "not found"
fi