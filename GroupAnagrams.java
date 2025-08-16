/* 
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class GroupAnagrams {

    public static List<List<String>> groupAnagrams(String[] strs) {
        // Handle empty or null input
        if (strs == null || strs.length == 0) {
            return new ArrayList<>();
        }

        // Use a HashMap to store sorted strings as keys and lists of original strings as values
        Map<String, List<String>> anagramGroups = new HashMap<>();

        for (String s : strs) {
            // Convert string to char array, sort it, and convert back to string
            char[] charArray = s.toCharArray();
            Arrays.sort(charArray);
            String sortedString = new String(charArray); // This is our key

            // If the sorted string (key) is not in the map, create a new list for it
            anagramGroups.computeIfAbsent(sortedString, k -> new ArrayList<>()).add(s); //
        }

        // Return all the lists of anagrams from the map's values
        return new ArrayList<>(anagramGroups.values()); //
    }

    public static void main(String[] args) {
        String[] input = {"eat", "tea", "tan", "ate", "nat", "bat"};
        List<List<String>> output = groupAnagrams(input);
        System.out.println(output); // Output: [[bat], [nat, tan], [eat, tea, ate]] (order of groups may vary)
    }
}
*/

import java.util.*;

public class GroupAnagrams {
    public static void main(String[] args) {
        String[] input = {"eat", "tea", "tan", "ate", "nat", "bat"};
        Map<String, List<String>> map = new HashMap<>();

        for (String s : input) {
            char[] c = s.toCharArray();
            Arrays.sort(c);
            String key = new String(c);
            map.computeIfAbsent(key, k -> new ArrayList<>()).add(s);
        }

        System.out.println(new ArrayList<>(map.values()));
    }
}


