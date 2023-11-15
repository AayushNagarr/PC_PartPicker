// import pool from '../../../lib/db';
import AccessoryCard from '../components/accessory';

const components = ['case_accessory', 'case_fan', 'case', 'cpu_cooler',
'cpu', 'external_hard_drive', 'fan_controller', 'headphones',
 'internal_hard_drive', 'keyboard', 'memory', 'monitor',
  'motherboard', 'mouse', 'os', 'power_supply', 'sound_card',
   'speaker', 'thermal_paste', 'ups', 'video_card', 'webcam',
    'wired_network_card', 'wireless_network_card']


const componentCardMap = {
    'case_accessory': { name: 'Case Accessory', description: 'Description for Case Accessory', path: '/case_accessory' },
    'case_fan': { name: 'Case Fan', description: 'Description for Case Fan', path: '/case_fan' },
    'case': { name: 'Computer Case', description: 'Description for Computer Case', path: '/case' },
    'cpu_cooler': { name: 'CPU Cooler', description: 'Description for CPU Cooler', path: '/cpu_cooler' },
    'cpu': { name: 'CPU', description: 'Description for CPU', path: '/cpu' },
    'external_hard_drive': { name: 'External Hard Drive', description: 'Description for External Hard Drive', path: '/external_hard_drive' },
    'fan_controller': { name: 'Fan Controller', description: 'Description for Fan Controller', path: '/fan_controller' },
    'headphones': { name: 'Headphones', description: 'Description for Headphones', path: '/headphones' },
    'internal_hard_drive': { name: 'Internal Hard Drive', description: 'Description for Internal Hard Drive', path: '/internal_hard_drive' },
    'keyboard': { name: 'Keyboard', description: 'Description for Keyboard', path: '/keyboard' },
    'memory': { name: 'Memory', description: 'Description for Memory', path: '/memory' },
    'monitor': { name: 'Monitor', description: 'Description for Monitor', path: '/monitor' },
    'motherboard': { name: 'Motherboard', description: 'Description for Motherboard', path: '/motherboard' },
    'mouse': { name: 'Mouse', description: 'Description for Mouse', path: '/mouse' },
    'os': { name: 'Operating System', description: 'Description for Operating System', path: '/os' },
    'power_supply': { name: 'Power Supply', description: 'Description for Power Supply', path: '/power_supply' },
    'sound_card': { name: 'Sound Card', description: 'Description for Sound Card', path: '/sound_card' },
    'speaker': { name: 'Speaker', description: 'Description for Speaker', path: '/speaker' },
    'thermal_paste': { name: 'Thermal Paste', description: 'Description for Thermal Paste', path: '/thermal_paste' },
    'ups': { name: 'UPS', description: 'Description for UPS', path: '/ups' },
    'video_card': { name: 'Video Card', description: 'Description for Video Card', path: '/video_card' },
    'webcam': { name: 'Webcam', description: 'Description for Webcam', path: '/webcam' },
    'wired_network_card': { name: 'Wired Network Card', description: 'Description for Wired Network Card', path: '/wired_network_card' },
    'wireless_network_card': { name: 'Wireless Network Card', description: 'Description for Wireless Network Card', path: '/wireless_network_card' },
  };

export default function Dashboard(){



         return (
            <div className="flex flex-wrap justify-center">
              {components.map((component, index) => (
                <AccessoryCard key={index} {...componentCardMap[component]} />
              ))}
            </div>
          );
}