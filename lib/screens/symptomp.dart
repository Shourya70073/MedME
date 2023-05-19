// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:medme/screens/symptinfo.dart';

class SymptomsScreen extends StatefulWidget {
  const SymptomsScreen({Key? key}) : super(key: key);

  @override
  _SymptomsScreenState createState() => _SymptomsScreenState();
}

class _SymptomsScreenState extends State<SymptomsScreen> {
  Map<String, dynamic> data = {
    "symptops": [
      {
        "Reason": [
          "Infections: The most common cause of fever is an infection, such as a viral or bacterial infection. Common examples include the flu, common cold, urinary tract infection, and pneumonia.",
          "Inflammatory conditions: Certain inflammatory conditions, such as rheumatoid arthritis or inflammatory bowel disease, can cause fever as a symptom.",
          "Heat exhaustion or heatstroke: Exposure to extreme heat or prolonged physical activity in high temperatures can lead to fever."
        ],
        "Medication": [
          "Acetaminophen (e.g., Tylenol): It helps reduce fever and relieve mild to moderate pain. It is available in various forms such as tablets, capsules, liquid, and suppositories.",
          "Ibuprofen (e.g., Advil, Motrin): It is a nonsteroidal anti-inflammatory drug (NSAID) that can reduce fever, relieve pain, and decrease inflammation. Ibuprofen is available in tablets, capsules, and liquid form."
        ],
        "Buy": [
          "https://www.1mg.com/drugs/ultracet-tablet-67071",
          "https://www.1mg.com/drugs/ibugesic-oral-suspension-orange-251756"
        ]
      },
      {
        "Reason": [
          "Acid Reflux: Gastroesophageal reflux disease (GERD) can cause stomach acid to flow back into the esophagus, leading to a bitter or sour taste in the mouth.",
          "Oral Health Issues: Dental problems such as gum disease, tooth infections, or poor oral hygiene can contribute to a bitter taste in the mouth.",
          "Gallbladder or Liver Issues: Bile reflux or liver disorders can result in a bitter taste due to the presence of bile in the mouth."
        ],
        "Medication": [
          "Mouthwash: Using an alcohol-free, antibacterial mouthwash can help freshen your breath and reduce any lingering bitter taste.",
          "Antacids: If acid reflux or heartburn is causing the bitter taste, over-the-counter antacids can help neutralize stomach acid and provide temporary relief."
        ],
        "Buy": [
          "https://www.1mg.com/otc/freshclor-mouthwash-mint-otc290027",
          "https://www.1mg.com/otc/gaviscon-oral-suspension-instant-relief-from-heartburn-indigestion-acid-reflux-peppermint-otc324135"
        ]
      },
      {
        "Reason": [
          "Common cold: The most common cause of a runny nose is a viral infection, typically associated with the common cold. Cold viruses cause inflammation in the nasal passages, leading to excessive production of mucus.",
          "Allergies: Allergic rhinitis, also known as hay fever, can result in a runny nose. It occurs when the immune system overreacts to allergens such as pollen, dust mites, pet dander, or certain foods. The body releases histamines, leading to nasal inflammation and increased mucus production.",
          "Environmental irritants: Exposure to irritants such as smoke, strong odors, pollutants, or chemicals can trigger a runny nose as the body tries to flush out the irritants by producing excess mucus."
        ],
        "Medication": [
          "Antihistamines: Antihistamines can help relieve symptoms of a runny nose caused by allergies. They work by blocking the effects of histamine, a chemical released during an allergic reaction. Examples of over-the-counter antihistamines include cetirizine (e.g., Zyrtec), loratadine (e.g., Claritin), and fexofenadine (e.g., Allegra).",
          "Nasal saline rinses: Nasal saline rinses or sprays, such as saline solution or saline nasal sprays, can help flush out irritants, thin mucus, and relieve nasal congestion and a runny nose."
        ],
        "Buy": [
          "https://www.1mg.com/otc/dr.-reckeweg-r84-inhalent-allergy-drop-otc326011",
          "https://www.1mg.com/drugs/nazome-saline-nasal-spray-drop-636840"
        ]
      },
      {
        "Reason": [
          "Respiratory Infections: Coughing is often associated with respiratory infections such as the common cold, flu (influenza), bronchitis, or pneumonia. These infections can cause inflammation and irritation in the respiratory system, leading to a cough.",
          "Allergies: Allergic reactions to substances like pollen, dust mites, pet dander, or certain foods can trigger coughing as the body attempts to clear the airways.",
          "Asthma: Asthma is a chronic condition characterized by inflammation and narrowing of the airways. It can cause recurrent coughing, wheezing, and shortness of breath."
        ],
        "Medication": [
          "Cough Suppressants: Cough suppressants can help relieve a dry or unproductive cough by suppressing the cough reflex. Common over-the-counter cough suppressants include dextromethorphan (e.g., Robitussin DM) and codeine (in some states, codeine requires a prescription).",
          "Nasal Sprays: Nasal sprays containing saline solution can help moisturize and soothe the nasal passages, reducing postnasal drip and associated coughing.",
          "Expectorants: Expectorants help loosen and thin mucus in the airways, making it easier to cough up. Guaifenesin (e.g., Mucinex) is a commonly used over-the-counter expectorant."
        ],
        "Buy": [
          "https://www.1mg.com/otc/vicks-cough-drops-ginger-otc552764",
          "https://www.1mg.com/otc/nasoclear-saline-nasal-spray-otc123750",
          "https://www.1mg.com/otc/dr.-wellmans-astha-cure-expectorant-otc652368"
        ]
      },
      {
        "Reason": [
          "Heart attack: Chest pain accompanied by symptoms like shortness of breath, sweating, nausea, and pain radiating to the arm, jaw, or back could indicate a heart attack.",
          "Gastroesophageal reflux disease (GERD): Acid reflux can cause a burning sensation and discomfort in the chest.",
          "Pneumonia: An infection in the lungs that can cause chest pain, cough, fever, and difficulty breathing."
        ],
        "Medication": [
          "Nitroglycerin: Nitroglycerin is commonly used to relieve chest pain associated with angina or heart-related conditions. It helps relax and widen blood vessels, improving blood flow to the heart.",
          "Antacids or Acid Reducers: If chest pain is due to gastroesophageal reflux disease (GERD) or acid reflux, antacids or acid reducers such as proton pump inhibitors (PPIs) may be recommended to reduce stomach acid and alleviate symptoms."
        ],
        "Buy": [
          "https://www.1mg.com/drugs/nitrocontin-2.6-tablet-cr-148867",
          "https://www.1mg.com/otc/gaviscon-oral-suspension-instant-relief-from-heartburn-indigestion-acid-reflux-peppermint-otc324135"
        ]
      },
      {
        "Reason": [
          "Tension Headaches: These are the most common type of headaches and often caused by muscle tension in the head, neck, and shoulders. Stress, poor posture, and anxiety are common triggers.",
          "Migraine Headaches: Migraines are typically characterized by severe, throbbing pain often accompanied by other symptoms such as sensitivity to light and sound, nausea, and visual disturbances. The exact cause of migraines is not fully understood, but factors like genetics, hormonal changes, certain foods, stress, and environmental factors can contribute.",
          "Sinus Headaches: Inflammation or infection of the sinuses can cause pain and pressure in the forehead, cheeks, and around the eyes. These headaches are often accompanied by nasal congestion and discharge."
        ],
        "Medication": [
          "Analgesics: Over-the-counter pain relievers such as acetaminophen (e.g., Tylenol), ibuprofen (e.g., Advil, Motrin), or naproxen (e.g., Aleve) can help relieve mild to moderate headaches. Follow the instructions on the packaging and adhere to the recommended dosage.",
          "Migraine-Specific Medications: If you experience migraines, there are over-the-counter medications specifically designed to address migraine symptoms. Examples include Excedrin Migraine, which contains a combination of acetaminophen, aspirin, and caffeine."
        ],
        "Buy": [
          "https://www.1mg.com/otc/dr.-reckeweg-r81-analgesic-drop-otc327384",
          "https://www.1mg.com/otc/dr.-reckeweg-r16-migraine-and-neuralgia-drop-otc326067"
        ]
      },
      {
        "Reason": [
          "Indigestion: Eating too quickly, overeating, or consuming spicy, fatty, or greasy foods can lead to indigestion and discomfort in the upper abdomen.",
          "Appendicitis: Inflammation of the appendix, a small organ in the lower right abdomen. Appendicitis typically causes sudden and severe pain in the right lower abdomen, which may require immediate medical attention.",
          "Gallstones: Hardened deposits in the gallbladder can cause abdominal pain, particularly after consuming fatty meals."
        ],
        "Medication": [
          "Antacids: Antacids such as calcium carbonate (e.g., Tums), magnesium hydroxide (e.g., Milk of Magnesia), or aluminum hydroxide can help neutralize stomach acid and provide relief from indigestion or heartburn.",
          "Anti-diarrheal Medications: If stomachache is accompanied by diarrhea, over-the-counter anti-diarrheal medications such as loperamide (e.g., Imodium) can help slow down bowel movements and relieve symptoms."
        ],
        "Buy": [
          "https://www.1mg.com/otc/gaviscon-oral-suspension-instant-relief-from-heartburn-indigestion-acid-reflux-peppermint-otc324135",
          "https://www.1mg.com/otc/gutrite-sachet-otc302610"
        ]
      },
      {
        "Reason": [
          "Osteoarthritis: This is the most common form of arthritis and occurs when the protective cartilage that cushions the ends of the bones wears down over time, leading to joint pain, stiffness, and limited mobility.",
          "Joint Injury: Trauma or injury to a joint, such as a sprain, strain, or fracture, can result in joint pain. Damage to the ligaments, tendons, or cartilage within the joint can lead to discomfort and inflammation.",
          "Rheumatoid Arthritis: Rheumatoid arthritis is an autoimmune disorder in which the body's immune system mistakenly attacks the joints, causing inflammation, pain, swelling, and stiffness."
        ],
        "Medication": [
          "Nonsteroidal Anti-Inflammatory Drugs (NSAIDs): NSAIDs such as ibuprofen (e.g., Advil, Motrin), naproxen (e.g., Aleve), or aspirin can help reduce pain, inflammation, and swelling associated with joint pain. These medications should be used as directed and with caution, as they can have potential side effects.",
          "Acetaminophen: Acetaminophen (e.g., Tylenol) is an over-the-counter pain reliever that can help alleviate mild to moderate joint pain. It is generally considered safe when used as directed.",
          "Topical Analgesics: Topical creams, gels, or patches containing ingredients like menthol, camphor, or capsaicin can provide localized relief for joint pain. These products are applied directly to the skin over the affected joint."
        ],
        "Buy": [
          "https://www.1mg.com/otc/agrawal-anti-inflammatory-antigestine-ointment-otc686004",
          "https://www.1mg.com/drugs/ultracet-tablet-67071",
          "https://www.1mg.com/otc/moov-pain-relief-cream-for-back-pain-joint-pain-knee-pain-muscle-pain-otc298649"
        ]
      }
    ]
  };
  List<String> symptoms = [
    "Fever",
    "Bitter Taste",
    "Runny Nose",
    "Cough",
    "Chest Pain",
    "Head Ache",
    "Stomach Ache",
    "Joint Pain"
  ];
  List<String> icons = [
    "fever.png",
    "whiteBloom.png",
    "runnyNose.png",
    "cough.png",
    "chestPain.png",
    "headache.png",
    "stomachache.png",
    "jointpain.png"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            color: Colors.black,
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              // Handle back button press
            },
          ),
          title: Text(
            'Symptoms',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          centerTitle: true,
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30)),
              color: Color(0xffB2D70B)),
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Text(
                "Are you experiencing any of the Following?",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30,
              ),
              Expanded(
                  child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: 8,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          child: GestureDetector(
                            onTap: () {
                              Get.to(
                                ()=> Symptoms(data: data["symptops"][index],index: index,)
                              );
                            },
                            child: Container(
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Image.asset("assets/images/${icons[index]}"),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    "${symptoms[index]}",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 17,
                                    ),
                                  )
                                ],
                              ),
                              height: 58,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white),
                            ),
                          ),
                        );
                      }))
            ],
          ),
        ));
  }
}
