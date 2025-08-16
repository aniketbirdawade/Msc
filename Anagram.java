import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class Anagram 
{
    public static void main(String[] args)
    {
        String [] input = {"eat", "tea", "tan", "ate", "nat", "bat"};       // Given input

        HashMap<String, List> hm = new HashMap<>(); 

        for(String s : input)
        {
            char[] c = s.toCharArray();    // tocharArray() seperate letters of given input string.
            Array.sort(c);

            String key = new String(c);     // Convert char array to string

            if (!hm.containsKey(key)) 
            { 
                hm.put(key, new ArrayList<>()); 
                
            }
        }
        System.out.println(new ArrayList<>(hm.values()));

    }
}

