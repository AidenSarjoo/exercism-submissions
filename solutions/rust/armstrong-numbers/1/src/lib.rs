pub fn is_armstrong_number(num: u32) -> bool {
    let num_s = num.to_string(); 
    let n: u32 = num_s.len() as u32; 
    let mut sum = 0;

    for c in num_s.chars() {
        sum += (c.to_digit(10).unwrap()).pow(n);
    }

    sum == num
}
