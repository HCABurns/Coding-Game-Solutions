import Glibc
import Foundation

public struct StderrOutputStream: TextOutputStream {
    public mutating func write(_ string: String) { fputs(string, stderr) }
}
public var errStream = StderrOutputStream()

let surfaceN = Int(readLine()!)! // the number of points used to draw the surface of Mars.
if surfaceN > 0 {
    for i in 0...(surfaceN-1) {
        let inputs = (readLine()!).split(separator: " ").map(String.init)
        let landX = Int(inputs[0])! // X coordinate of a surface point. (0 to 6999)
        let landY = Int(inputs[1])! // Y coordinate of a surface point. By linking all the points together in a sequential fashion, you form the surface of Mars.
    }
}

// game loop
while true {
    let inputs = (readLine()!).split(separator: " ").map(String.init)
    let X = Int(inputs[0])!
    let Y = Int(inputs[1])!
    let hSpeed = Int(inputs[2])! // the horizontal speed (in m/s), can be negative.
    let vSpeed = Int(inputs[3])! // the vertical speed (in m/s), can be negative.
    let fuel = Int(inputs[4])! // the quantity of remaining fuel in liters.
    let rotate = Int(inputs[5])! // the rotation angle in degrees (-90 to 90).
    let power = Int(inputs[6])! // the thrust power (0 to 4).

    // If speed larger than landing speed, set power to max.
    if (vSpeed >= -39){
        print("0 0")
    }
    else{
        print("0 4")
    }
}
