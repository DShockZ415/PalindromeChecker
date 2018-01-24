public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String Oof=new String();
  for(int i=0;i<word.length();i++)
  {
    if(Character.isLetter(word.charAt(i))==true)
    {
    Oof= Oof + word.substring(i,i+1);
    }
  }
  if(reverse(word.toLowerCase()).equals(Oof.toLowerCase()))
  {
    return true;
  }
  else
  return false;
}
public String reverse(String str)
{
  String sNew = new String();
  for(int i=str.length()-1;i>=0;i--)
  {
    if(Character.isLetter(str.charAt(i))==true)
    {
    sNew= sNew + str.substring(i,i+1);
  }
  }
    return sNew;
}