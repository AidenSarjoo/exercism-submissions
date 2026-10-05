pub fn reverse(input: &str) -> String {
    let mut rev = "".to_string();
    for c in input.chars().rev() {
        rev += &format!("{c}");
    }
    return rev;
}
