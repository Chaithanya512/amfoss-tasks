import java.io.*;
import java.util.*;
import java.text.*;
import java.math.*;
import java.util.regex.*;

public class Solution {

    public static void main(String[] args) {
        /* Enter your code here. Read input from STDIN. Print output to STDOUT. Your class should be named Solution. */
         System.out.print("");
        double n,i ;
        double f =  0;
        int k = (int) f;
        Scanner in = new Scanner(System.in);
        n = in.nextDouble();
        for (i = 1; i <=n; i++) {
            if (n%i == 0) {
                k++;
            }
    }
System.out.print(k);
    }
}
