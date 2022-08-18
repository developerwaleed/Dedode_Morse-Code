def decode_char(char)
invalid = true;
decoded_message = ""
    morse_dict = {
      'A' => '.-', 'B' => '-...', 'C' => '-.-.', 'D' => '-..', 'E' => '.',
      'F' => '..-.', 'G' => '--.', 'H' => '....',
      'I' => '..', 'J' => '.---', 'K' => '-.-', 'L' => '.-..',
      'M' => '--', 'N' => '-.', 'O' => '---', 'P' => '.--.',
      'Q' => '--.-', 'R' => '.-.', 'S' => '...', 'T' => '-',
      'U' => '..-', 'V' => '...-', 'W' => '.--', 'X' => '-..-',
      'Y' => '-.--', 'Z' => '--..'
    }

    str = char.split(/ /)
    str.each do |item|
        if morse_dict.key(item)
                    decoded_message = decoded_message + morse_dict.key(item)
        elsif item == ""
            decoded_message = decoded_message + " "
           
        else 
            invalid = false;
      end
    end      
end

decode_char(" .-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...")
