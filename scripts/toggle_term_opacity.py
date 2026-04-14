import sys

if len(sys.argv) <= 1 or (sys.argv[1] != "+" and sys.argv[1] != "-"):
    print("misuse of toggle term opacity", file=sys.stderr)

print(sys.argv)
