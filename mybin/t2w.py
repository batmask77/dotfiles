#!/usr/bin/env python
import sys

def t2w():
    """Read standard input and wrap it with
    <pre class="terminal"> and decorate it with
    CSS for terminal
    """
    head = """<style>
        .terminal {
            background-color: black;
            color: white;
            font-family: 
                "Fira Code",
                "JetBrains Mono",
                "Source Code Pro",
                "DejaVu Sans Mono",
                "Ubuntu Mono",
                monospace;
            font-size: 14px;
            line-height: 1.4;
            overflow-x: auto;
        }
    </style>
    <pre class="terminal">
    """
    tail = "</pre>"
    print(head.strip())
    while True:
        line = sys.stdin.readline().strip()
        if not line:
            break
        print(line)

    print(tail)

def main():
   t2w() 
    
if __name__ == "__main__":
    main()
    