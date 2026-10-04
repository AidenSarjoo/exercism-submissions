use time::PrimitiveDateTime as DateTime;
use time::ext::NumericalDuration;

// Returns a DateTime one billion seconds after start.
pub fn after(start: DateTime) -> DateTime {
    let giga: i64 = 1000 * 1000000;
    return start.saturating_add(giga.seconds())
}
