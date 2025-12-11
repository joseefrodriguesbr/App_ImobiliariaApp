//
//  FeatureBadge.swift
//  App_ImobiliariaApp
//
//  Created by user288578 on 12/10/25.
//

import SwiftUI

struct FeatureBadge: View {
    let icon: String
    let value: String
    let label: String
    
    var body: some View {
        VStack {
            Image(systemName: icon)
                .font(.title2)
                .foregroundColor(.blue)
            Text(value)
                .font(.headline)
            Text(label)
                .font(.caption)
                .foregroundColor(.secondary)
        }
        .frame(width: 80, height: 80)
        .padding(5)
        .background(Color.gray.opacity(0.1))
        .cornerRadius(10)
    }
}

#Preview {
    FeatureBadge(icon: "bed.double.fill", value: "3", label: "Quartos")
}
