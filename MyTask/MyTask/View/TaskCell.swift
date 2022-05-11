import UIKit

class TaskCell: UICollectionViewCell {
    private var title: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .semiLargeBold
        label.text = "GitHub 공부하기"
        return label
    }()

    private var contents: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .mediumRegular
        label.text = "add, commit, push"
        return label
    }()

    private var author: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .smallRegular
        label.textColor = .systemGray4
        label.text = "author by sally"
        return label
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.layout()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.layout()
    }
}

private extension TaskCell {
    func layout() {
        let inset: CGFloat = 8
        self.addSubview(title)
        self.addSubview(contents)
        self.addSubview(author)

        NSLayoutConstraint.activate([
            self.title.topAnchor.constraint(equalTo: self.topAnchor, constant: inset * 2),
            self.title.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: inset * 2),
            self.title.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -inset * 2),

            self.contents.topAnchor.constraint(equalTo: self.title.bottomAnchor, constant: inset),
            self.contents.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: inset * 2),
            self.contents.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -inset * 2),

            self.author.topAnchor.constraint(equalTo: self.contents.bottomAnchor, constant: inset),
            self.author.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: inset * 2),
            self.author.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -inset * 2),
            self.author.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -inset * 2)
        ])
    }
}
