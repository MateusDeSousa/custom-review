import StoreKit
import UIKit

public class CustomReviewView: UIView{

    let titleView: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "O que você está achando do App?"
        label.font = .boldSystemFont(ofSize: 17)
        label.textAlignment = .center
        return label
    }()

    let descriptionView: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Selecione uma reação abaixo para que possamos saber o nivel de satisfação com o app."
        label.textAlignment = .center
        label.numberOfLines = 0
        return label
    }()

    public override init(frame: CGRect) {
        super.init(frame: frame)
        setupSubview()
        setupAnchors()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setupSubview() {
        addSubview(titleView)
        addSubview(descriptionView)
    }

    private func setupAnchors() {
        NSLayoutConstraint.activate([
            titleView.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            titleView.centerXAnchor.constraint(equalTo: centerXAnchor),

            descriptionView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 25),
            descriptionView.topAnchor.constraint(equalTo: titleView.bottomAnchor, constant: 20),
            descriptionView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -25)
        ])


    }

    public func startReview(){

    }
}
