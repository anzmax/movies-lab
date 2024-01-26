import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    var annotationItems: [AnnotationItem]

    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }

    func updateUIView(_ view: MKMapView, context: Context) {
        updateAnnotations(from: view)
    }

    private func updateAnnotations(from mapView: MKMapView) {
        mapView.removeAnnotations(mapView.annotations)
        
        let annotations = annotationItems.map { item -> MKPointAnnotation in
            let annotation = MKPointAnnotation()
            annotation.coordinate = item.coordinate
            annotation.title = item.title
            return annotation
        }
        
        mapView.addAnnotations(annotations)
    }
}


struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        let annotationItems = Post.data.map { AnnotationItem(coordinate: $0.location, title: $0.title) }
        
        MapView(annotationItems: annotationItems)
    }
}

