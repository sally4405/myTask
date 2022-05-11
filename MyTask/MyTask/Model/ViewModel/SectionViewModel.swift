import Foundation

class SectionViewModel {
    private var useCase: SectionUseCase?
    private var count: Int? {
        return useCase?.getCount()
    }
}
