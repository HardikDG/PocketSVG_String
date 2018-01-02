/*
 * This file is part of the PocketSVG package.
 * Copyright (c) Ponderwell, Ariel Elkin, Fjölnir Ásgeirsson, and Contributors
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */

import UIKit

import PocketSVG

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white

        let url = Bundle.main.url(forResource: "tiger", withExtension: "svg")!

        //initialise a view that parses and renders an SVG file in the bundle:
        let svgImageView = SVGImageView.init(svgSource: "<?xml version=\"1.0\" encoding=\"UTF-8\"?><svg width=\"25.000000pt\" height=\"25.000000pt\" viewBox=\"0 0 25.000000 25.000000\" preserveAspectRatio=\"xMidYMid meet\"><g transform=\"translate(0.000000,25.000000)\" fill=\"#00ffff\" stroke=\"none\"><path d=\"M169 211 c-20 -22 -47 -58 -60 -80 -21 -38 -49 -55 -49 -31 0 14 -22 12 -42 -4 -16 -12 -15 -16 13 -54 42 -57 68 -56 93 4 20 48 74 132 107 165 25 25 24 39 -3 39 -12 0 -38 -17 -59 -39z\"/></g></svg>")
        
//        let svgImageView = SVGImageView.init(contentsOf: url)

        //scale the resulting image to fit the frame of the view, but
        //maintain its aspect ratio:
        svgImageView.contentMode = .scaleAspectFit


        //layout the view:
        svgImageView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(svgImageView)

        svgImageView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        svgImageView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        svgImageView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        
    }
}
