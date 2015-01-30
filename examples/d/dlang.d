// Computes average line length for standard input.
module dlang;

import std.stdio;

void main()
{
    ulong lines = 0;
    double sumLength = 0;
    foreach (line; stdin.byLine())
    {
        ++lines;
        sumLength += line.length;
    }
    writeln("Average line length: ",
        lines ? sumLength / lines : 0);
}