public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}

public boolean palindrome(String word)
{
  String fix = noSpaces(word);
  fix = onlyLetters(fix);
  if(fix.equals(reverse(fix)))
  return true;
  return false;
}

public String reverse(String str)
{
    String sNew = new String();
      int last = str.length() - 1;
  for(int i = last; i >= 0; i --)
  sNew = sNew + str.charAt(i);
    return sNew;
}

public String noSpaces(String sWord){
  String str = "";
  for(int i = 0; i < sWord.length(); i++)
  {
    if(Character.isLetter(sWord.charAt(i)) == true)
    str += sWord.charAt(i);
  }
  return str.toLowerCase();
}

public String onlyLetters(String sString){
    String str = "";
  for(int i = 0; i < sString.length(); i++)
  {
    if(Character.isLetter(sString.charAt(i)) == true)
    str += sString.charAt(i);
  }
  return str;
}
